#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by irodrig on mar dic  3 12:29:08 CET 2019
# 
#  cmd:    swerv -snapshot=randomcache 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'testbench' => {
                             'ext_datawidth' => '64',
                             'clock_period' => '100',
                             'ext_addrwidth' => '32',
                             'datawidth' => '64',
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'assert_on' => '',
                             'SDVT_AHB' => '1',
                             'sterr_rollback' => '0',
                             'build_axi4' => '',
                             'lderr_rollback' => '1',
                             'TOP' => 'tb_top',
                             'RV_TOP' => '`TOP.rvtop'
                           },
            'reset_vec' => '0x80000000',
            'iccm' => {
                        'iccm_data_cell' => 'ram_16384x39',
                        'iccm_sadr' => '0xee000000',
                        'iccm_num_banks' => '8',
                        'iccm_bits' => 19,
                        'iccm_size' => 512,
                        'iccm_rows' => '16384',
                        'iccm_reserved' => '0x1000',
                        'iccm_region' => '0xe',
                        'iccm_eadr' => '0xee07ffff',
                        'iccm_size_512' => '',
                        'iccm_bank_bits' => 3,
                        'iccm_offset' => '0xe000000',
                        'iccm_num_banks_8' => '',
                        'iccm_index_bits' => 14
                      },
            'harts' => 1,
            'regwidth' => '32',
            'triggers' => [
                            {
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ],
                              'poke_mask' => [
                                               '0x081818c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ],
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ]
                            },
                            {
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ],
                              'poke_mask' => [
                                               '0x081818c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ],
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ]
                            },
                            {
                              'poke_mask' => [
                                               '0x081818c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ],
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ],
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ]
                            },
                            {
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ],
                              'poke_mask' => [
                                               '0x081818c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ],
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ]
                            }
                          ],
            'dccm' => {
                        'dccm_offset' => '0x40000',
                        'dccm_reserved' => '0x1000',
                        'dccm_index_bits' => 11,
                        'dccm_eadr' => '0xf004ffff',
                        'dccm_region' => '0xf',
                        'dccm_enable' => '1',
                        'dccm_num_banks_8' => '',
                        'dccm_bank_bits' => 3,
                        'dccm_data_width' => 32,
                        'dccm_bits' => 16,
                        'dccm_size' => 64,
                        'dccm_ecc_width' => 7,
                        'dccm_size_64' => '',
                        'dccm_byte_width' => '4',
                        'dccm_fdata_width' => 39,
                        'dccm_rows' => '2048',
                        'dccm_data_cell' => 'ram_2048x39',
                        'dccm_width_bits' => 2,
                        'dccm_num_banks' => '8',
                        'dccm_sadr' => '0xf0040000',
                        'lsu_sb_bits' => 16
                      },
            'tec_rv_icg' => 'clockhdr',
            'verilator' => '',
            'protection' => {
                              'inst_access_mask0' => '0xffffffff',
                              'inst_access_addr5' => '0x00000000',
                              'inst_access_enable0' => '0x0',
                              'data_access_mask3' => '0xffffffff',
                              'data_access_mask0' => '0xffffffff',
                              'inst_access_mask6' => '0xffffffff',
                              'inst_access_addr7' => '0x00000000',
                              'inst_access_mask2' => '0xffffffff',
                              'inst_access_mask4' => '0xffffffff',
                              'data_access_enable3' => '0x0',
                              'data_access_enable6' => '0x0',
                              'inst_access_addr2' => '0x00000000',
                              'data_access_mask2' => '0xffffffff',
                              'inst_access_mask5' => '0xffffffff',
                              'data_access_mask4' => '0xffffffff',
                              'data_access_addr4' => '0x00000000',
                              'inst_access_enable2' => '0x0',
                              'inst_access_addr6' => '0x00000000',
                              'data_access_enable2' => '0x0',
                              'inst_access_addr4' => '0x00000000',
                              'inst_access_enable3' => '0x0',
                              'inst_access_addr0' => '0x00000000',
                              'inst_access_mask1' => '0xffffffff',
                              'inst_access_mask7' => '0xffffffff',
                              'inst_access_enable6' => '0x0',
                              'data_access_enable1' => '0x0',
                              'inst_access_mask3' => '0xffffffff',
                              'data_access_enable7' => '0x0',
                              'data_access_mask6' => '0xffffffff',
                              'data_access_mask5' => '0xffffffff',
                              'data_access_addr5' => '0x00000000',
                              'data_access_addr1' => '0x00000000',
                              'data_access_addr7' => '0x00000000',
                              'data_access_enable5' => '0x0',
                              'data_access_addr2' => '0x00000000',
                              'inst_access_addr3' => '0x00000000',
                              'inst_access_addr1' => '0x00000000',
                              'inst_access_enable4' => '0x0',
                              'data_access_mask1' => '0xffffffff',
                              'inst_access_enable7' => '0x0',
                              'data_access_mask7' => '0xffffffff',
                              'inst_access_enable5' => '0x0',
                              'data_access_enable4' => '0x0',
                              'data_access_enable0' => '0x0',
                              'inst_access_enable1' => '0x0',
                              'data_access_addr0' => '0x00000000',
                              'data_access_addr6' => '0x00000000',
                              'data_access_addr3' => '0x00000000'
                            },
            'even_odd_trigger_chains' => 'true',
            'retstack' => {
                            'ret_stack_size' => '4'
                          },
            'icache' => {
                          'icache_tag_depth' => 64,
                          'icache_ic_index' => 8,
                          'icache_tag_low' => '6',
                          'icache_enable' => '1',
                          'icache_size' => 16,
                          'icache_taddr_high' => 5,
                          'icache_tag_cell' => 'ram_64x21',
                          'icache_data_cell' => 'ram_256x34',
                          'icache_tag_high' => 12,
                          'icache_ic_rows' => '256',
                          'icache_ic_depth' => 8
                        },
            'numiregs' => '32',
            'pic' => {
                       'pic_meipl_offset' => '0x0000',
                       'pic_meipt_offset' => '0x3004',
                       'pic_base_addr' => '0xf00c0000',
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_offset' => '0xc0000',
                       'pic_bits' => 15,
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_int_words' => 1,
                       'pic_total_int_plus1' => 9,
                       'pic_region' => '0xf',
                       'pic_meip_offset' => '0x1000',
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_size' => 32,
                       'pic_total_int' => 8,
                       'pic_meie_offset' => '0x2000'
                     },
            'target' => 'default',
            'max_mmode_perf_event' => '50',
            'nmi_vec' => '0x11110000',
            'bht' => {
                       'bht_hash_string' => '{ghr[3:2] ^ {ghr[3+1], {4-1-2{1\'b0} } },hashin[5:4]^ghr[2-1:0]}',
                       'bht_ghr_pad' => 'fghr[4],3\'b0',
                       'bht_ghr_pad2' => 'fghr[4:3],2\'b0',
                       'bht_ghr_range' => '4:0',
                       'bht_ghr_size' => 5,
                       'bht_size' => 128,
                       'bht_addr_lo' => '4',
                       'bht_array_depth' => 16,
                       'bht_addr_hi' => 7
                     },
            'physical' => '1',
            'bus' => {
                       'lsu_bus_tag' => 4,
                       'dma_bus_tag' => '1',
                       'sb_bus_tag' => '1',
                       'ifu_bus_tag' => '3'
                     },
            'memmap' => {
                          'external_data_1' => '0x00000000',
                          'external_prog' => '0xb0000000',
                          'serialio' => '0xd0580000',
                          'debug_sb_mem' => '0xb0580000',
                          'external_data' => '0xc0580000'
                        },
            'csr' => {
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'mcpc' => {
                                   'exists' => 'true',
                                   'mask' => '0x0',
                                   'number' => '0x7c2',
                                   'reset' => '0x0'
                                 },
                       'marchid' => {
                                      'exists' => 'true',
                                      'mask' => '0x0',
                                      'reset' => '0x0000000b'
                                    },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'mhpmevent4' => {
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0',
                                         'exists' => 'true'
                                       },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'miccmect' => {
                                       'exists' => 'true',
                                       'mask' => '0xffffffff',
                                       'reset' => '0x0',
                                       'number' => '0x7f1'
                                     },
                       'meicpct' => {
                                      'comment' => 'External claim id/priority capture.',
                                      'mask' => '0x0',
                                      'number' => '0xbca',
                                      'reset' => '0x0',
                                      'exists' => 'true'
                                    },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'dicawics' => {
                                       'exists' => 'true',
                                       'reset' => '0x0',
                                       'number' => '0x7c8',
                                       'mask' => '0x0130fffc',
                                       'debug' => 'true',
                                       'comment' => 'Cache diagnostics.'
                                     },
                       'mhpmcounter5' => {
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0',
                                           'exists' => 'true'
                                         },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'mhpmcounter3h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'misa' => {
                                   'exists' => 'true',
                                   'mask' => '0x0',
                                   'reset' => '0x40001104'
                                 },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'mfdc' => {
                                   'exists' => 'true',
                                   'reset' => '0x00070000',
                                   'number' => '0x7f9',
                                   'mask' => '0x000707ff'
                                 },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'mvendorid' => {
                                        'exists' => 'true',
                                        'mask' => '0x0',
                                        'reset' => '0x45'
                                      },
                       'meipt' => {
                                    'comment' => 'External interrupt priority threshold.',
                                    'exists' => 'true',
                                    'mask' => '0xf',
                                    'reset' => '0x0',
                                    'number' => '0xbc9'
                                  },
                       'mstatus' => {
                                      'reset' => '0x1800',
                                      'mask' => '0x88',
                                      'exists' => 'true'
                                    },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'mdccmect' => {
                                       'mask' => '0xffffffff',
                                       'reset' => '0x0',
                                       'number' => '0x7f2',
                                       'exists' => 'true'
                                     },
                       'mhpmcounter5h' => {
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0',
                                            'exists' => 'true'
                                          },
                       'mie' => {
                                  'mask' => '0x40000888',
                                  'reset' => '0x0',
                                  'exists' => 'true'
                                },
                       'mhpmcounter6' => {
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff',
                                           'exists' => 'true'
                                         },
                       'dicago' => {
                                     'comment' => 'Cache diagnostics.',
                                     'exists' => 'true',
                                     'mask' => '0x0',
                                     'debug' => 'true',
                                     'reset' => '0x0',
                                     'number' => '0x7cb'
                                   },
                       'mhpmevent6' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'tselect' => {
                                      'exists' => 'true',
                                      'reset' => '0x0',
                                      'mask' => '0x3'
                                    },
                       'mip' => {
                                  'exists' => 'true',
                                  'poke_mask' => '0x40000888',
                                  'mask' => '0x0',
                                  'reset' => '0x0'
                                },
                       'meicidpl' => {
                                       'comment' => 'External interrupt claim id priority level.',
                                       'exists' => 'true',
                                       'mask' => '0xf',
                                       'reset' => '0x0',
                                       'number' => '0xbcb'
                                     },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'dcsr' => {
                                   'reset' => '0x40000003',
                                   'mask' => '0x00008c04',
                                   'poke_mask' => '0x00008dcc',
                                   'exists' => 'true'
                                 },
                       'mhpmcounter4h' => {
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0',
                                            'exists' => 'true'
                                          },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'mhpmcounter3' => {
                                           'exists' => 'true',
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff'
                                         },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'mhpmevent3' => {
                                         'exists' => 'true',
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff'
                                       },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'meicurpl' => {
                                       'comment' => 'External interrupt current priority level.',
                                       'exists' => 'true',
                                       'number' => '0xbcc',
                                       'reset' => '0x0',
                                       'mask' => '0xf'
                                     },
                       'mpmc' => {
                                   'reset' => '0x0',
                                   'number' => '0x7c6',
                                   'mask' => '0x0',
                                   'exists' => 'true',
                                   'comment' => 'Core pause: Implemented as read only.'
                                 },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'mimpid' => {
                                     'mask' => '0x0',
                                     'reset' => '0x1',
                                     'exists' => 'true'
                                   },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'micect' => {
                                     'exists' => 'true',
                                     'mask' => '0xffffffff',
                                     'reset' => '0x0',
                                     'number' => '0x7f0'
                                   },
                       'mhpmevent5' => {
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0',
                                         'exists' => 'true'
                                       },
                       'dmst' => {
                                   'exists' => 'true',
                                   'mask' => '0x0',
                                   'debug' => 'true',
                                   'number' => '0x7c4',
                                   'reset' => '0x0',
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.'
                                 },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter4' => {
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0',
                                           'exists' => 'true'
                                         },
                       'dicad1' => {
                                     'comment' => 'Cache diagnostics.',
                                     'number' => '0x7ca',
                                     'reset' => '0x0',
                                     'debug' => 'true',
                                     'mask' => '0x3',
                                     'exists' => 'true'
                                   },
                       'mcgc' => {
                                   'exists' => 'true',
                                   'poke_mask' => '0x000001ff',
                                   'mask' => '0x000001ff',
                                   'reset' => '0x0',
                                   'number' => '0x7f8'
                                 },
                       'dicad0' => {
                                     'exists' => 'true',
                                     'reset' => '0x0',
                                     'number' => '0x7c9',
                                     'debug' => 'true',
                                     'mask' => '0xffffffff',
                                     'comment' => 'Cache diagnostics.'
                                   },
                       'mhpmcounter6h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          }
                     },
            'core' => {
                        'lsu_num_nbload_width' => '3',
                        'lsu_stbuf_depth' => '8',
                        'lsu_num_nbload' => '8',
                        'dma_buf_depth' => '4',
                        'dec_instbuf_depth' => '4'
                      },
            'num_mmode_perf_regs' => '4',
            'xlen' => 32,
            'btb' => {
                       'btb_index2_hi' => 7,
                       'btb_addr_lo' => '4',
                       'btb_index2_lo' => 6,
                       'btb_btag_fold' => 1,
                       'btb_index1_lo' => '4',
                       'btb_index3_lo' => 8,
                       'btb_size' => 32,
                       'btb_array_depth' => 4,
                       'btb_index3_hi' => 9,
                       'btb_btag_size' => 9,
                       'btb_addr_hi' => 5,
                       'btb_index1_hi' => 5
                     }
          );
1;
