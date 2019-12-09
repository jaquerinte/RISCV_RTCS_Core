#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by irodrig on lun dic  9 09:17:14 CET 2019
# 
#  cmd:    swerv -snapshot=default -ahb_lite 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'physical' => '1',
            'verilator' => '',
            'target' => 'default',
            'max_mmode_perf_event' => '50',
            'protection' => {
                              'inst_access_mask2' => '0xffffffff',
                              'inst_access_addr2' => '0x00000000',
                              'data_access_enable2' => '0x0',
                              'data_access_addr2' => '0x00000000',
                              'inst_access_addr6' => '0x00000000',
                              'inst_access_addr7' => '0x00000000',
                              'data_access_enable3' => '0x0',
                              'data_access_enable5' => '0x0',
                              'data_access_mask0' => '0xffffffff',
                              'data_access_mask2' => '0xffffffff',
                              'inst_access_mask4' => '0xffffffff',
                              'inst_access_mask5' => '0xffffffff',
                              'inst_access_addr4' => '0x00000000',
                              'data_access_enable6' => '0x0',
                              'inst_access_addr0' => '0x00000000',
                              'data_access_addr1' => '0x00000000',
                              'inst_access_enable3' => '0x0',
                              'data_access_addr3' => '0x00000000',
                              'data_access_mask6' => '0xffffffff',
                              'inst_access_enable2' => '0x0',
                              'inst_access_addr1' => '0x00000000',
                              'data_access_addr6' => '0x00000000',
                              'data_access_enable1' => '0x0',
                              'data_access_addr5' => '0x00000000',
                              'inst_access_enable7' => '0x0',
                              'inst_access_mask7' => '0xffffffff',
                              'data_access_mask1' => '0xffffffff',
                              'inst_access_enable1' => '0x0',
                              'data_access_enable0' => '0x0',
                              'inst_access_mask6' => '0xffffffff',
                              'inst_access_enable0' => '0x0',
                              'data_access_mask7' => '0xffffffff',
                              'inst_access_addr3' => '0x00000000',
                              'data_access_mask4' => '0xffffffff',
                              'data_access_addr0' => '0x00000000',
                              'data_access_addr4' => '0x00000000',
                              'data_access_enable4' => '0x0',
                              'data_access_mask5' => '0xffffffff',
                              'inst_access_mask3' => '0xffffffff',
                              'inst_access_mask1' => '0xffffffff',
                              'inst_access_enable4' => '0x0',
                              'inst_access_addr5' => '0x00000000',
                              'inst_access_enable5' => '0x0',
                              'data_access_enable7' => '0x0',
                              'data_access_addr7' => '0x00000000',
                              'inst_access_enable6' => '0x0',
                              'inst_access_mask0' => '0xffffffff',
                              'data_access_mask3' => '0xffffffff'
                            },
            'num_mmode_perf_regs' => '4',
            'icache' => {
                          'icache_tag_depth' => 64,
                          'icache_enable' => '1',
                          'icache_taddr_high' => 5,
                          'icache_size' => 16,
                          'icache_ic_index' => 8,
                          'icache_ic_rows' => '256',
                          'icache_ic_depth' => 8,
                          'icache_tag_cell' => 'ram_64x21',
                          'icache_tag_low' => '6',
                          'icache_tag_high' => 12,
                          'icache_data_cell' => 'ram_256x34'
                        },
            'tec_rv_icg' => 'clockhdr',
            'regwidth' => '32',
            'csr' => {
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'meicidpl' => {
                                       'reset' => '0x0',
                                       'mask' => '0xf',
                                       'number' => '0xbcb',
                                       'comment' => 'External interrupt claim id priority level.',
                                       'exists' => 'true'
                                     },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'mhpmevent4' => {
                                         'exists' => 'true',
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff'
                                       },
                       'dicawics' => {
                                       'reset' => '0x0',
                                       'mask' => '0x0130fffc',
                                       'debug' => 'true',
                                       'comment' => 'Cache diagnostics.',
                                       'exists' => 'true',
                                       'number' => '0x7c8'
                                     },
                       'mhpmevent6' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter3h' => {
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0',
                                            'exists' => 'true'
                                          },
                       'tselect' => {
                                      'exists' => 'true',
                                      'mask' => '0x3',
                                      'reset' => '0x0'
                                    },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'mdccmect' => {
                                       'number' => '0x7f2',
                                       'exists' => 'true',
                                       'mask' => '0xffffffff',
                                       'reset' => '0x0'
                                     },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'mfdc' => {
                                   'number' => '0x7f9',
                                   'exists' => 'true',
                                   'mask' => '0x000707ff',
                                   'reset' => '0x00070000'
                                 },
                       'meicurpl' => {
                                       'number' => '0xbcc',
                                       'exists' => 'true',
                                       'comment' => 'External interrupt current priority level.',
                                       'reset' => '0x0',
                                       'mask' => '0xf'
                                     },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'meipt' => {
                                    'reset' => '0x0',
                                    'mask' => '0xf',
                                    'exists' => 'true',
                                    'comment' => 'External interrupt priority threshold.',
                                    'number' => '0xbc9'
                                  },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'mvendorid' => {
                                        'reset' => '0x45',
                                        'mask' => '0x0',
                                        'exists' => 'true'
                                      },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'dicad0' => {
                                     'mask' => '0xffffffff',
                                     'reset' => '0x0',
                                     'number' => '0x7c9',
                                     'exists' => 'true',
                                     'comment' => 'Cache diagnostics.',
                                     'debug' => 'true'
                                   },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'mcpc' => {
                                   'reset' => '0x0',
                                   'mask' => '0x0',
                                   'exists' => 'true',
                                   'number' => '0x7c2'
                                 },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'miccmect' => {
                                       'number' => '0x7f1',
                                       'exists' => 'true',
                                       'reset' => '0x0',
                                       'mask' => '0xffffffff'
                                     },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter3' => {
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff',
                                           'exists' => 'true'
                                         },
                       'dmst' => {
                                   'number' => '0x7c4',
                                   'debug' => 'true',
                                   'exists' => 'true',
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.',
                                   'mask' => '0x0',
                                   'reset' => '0x0'
                                 },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'mpmc' => {
                                   'number' => '0x7c6',
                                   'exists' => 'true',
                                   'comment' => 'Core pause: Implemented as read only.',
                                   'mask' => '0x0',
                                   'reset' => '0x0'
                                 },
                       'mimpid' => {
                                     'mask' => '0x0',
                                     'reset' => '0x1',
                                     'exists' => 'true'
                                   },
                       'marchid' => {
                                      'mask' => '0x0',
                                      'reset' => '0x0000000b',
                                      'exists' => 'true'
                                    },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'mhpmevent5' => {
                                         'exists' => 'true',
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0'
                                       },
                       'mhpmcounter6h' => {
                                            'exists' => 'true',
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff'
                                          },
                       'dicad1' => {
                                     'comment' => 'Cache diagnostics.',
                                     'exists' => 'true',
                                     'debug' => 'true',
                                     'number' => '0x7ca',
                                     'mask' => '0x3',
                                     'reset' => '0x0'
                                   },
                       'micect' => {
                                     'mask' => '0xffffffff',
                                     'reset' => '0x0',
                                     'exists' => 'true',
                                     'number' => '0x7f0'
                                   },
                       'mip' => {
                                  'reset' => '0x0',
                                  'mask' => '0x0',
                                  'poke_mask' => '0x40000888',
                                  'exists' => 'true'
                                },
                       'mhpmevent3' => {
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0',
                                         'exists' => 'true'
                                       },
                       'mhpmcounter5' => {
                                           'exists' => 'true',
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff'
                                         },
                       'mhpmcounter4h' => {
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0',
                                            'exists' => 'true'
                                          },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter6' => {
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0',
                                           'exists' => 'true'
                                         },
                       'mstatus' => {
                                      'reset' => '0x1800',
                                      'mask' => '0x88',
                                      'exists' => 'true'
                                    },
                       'mcgc' => {
                                   'exists' => 'true',
                                   'number' => '0x7f8',
                                   'poke_mask' => '0x000001ff',
                                   'mask' => '0x000001ff',
                                   'reset' => '0x0'
                                 },
                       'mie' => {
                                  'exists' => 'true',
                                  'mask' => '0x40000888',
                                  'reset' => '0x0'
                                },
                       'mhpmcounter4' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'misa' => {
                                   'exists' => 'true',
                                   'mask' => '0x0',
                                   'reset' => '0x40001104'
                                 },
                       'mhpmcounter5h' => {
                                            'exists' => 'true',
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff'
                                          },
                       'dcsr' => {
                                   'poke_mask' => '0x00008dcc',
                                   'reset' => '0x40000003',
                                   'mask' => '0x00008c04',
                                   'exists' => 'true'
                                 },
                       'meicpct' => {
                                      'mask' => '0x0',
                                      'reset' => '0x0',
                                      'number' => '0xbca',
                                      'exists' => 'true',
                                      'comment' => 'External claim id/priority capture.'
                                    },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'dicago' => {
                                     'mask' => '0x0',
                                     'reset' => '0x0',
                                     'exists' => 'true',
                                     'comment' => 'Cache diagnostics.',
                                     'debug' => 'true',
                                     'number' => '0x7cb'
                                   }
                     },
            'nmi_vec' => '0x11110000',
            'iccm' => {
                        'iccm_bits' => 19,
                        'iccm_num_banks' => '8',
                        'iccm_sadr' => '0xee000000',
                        'iccm_bank_bits' => 3,
                        'iccm_rows' => '16384',
                        'iccm_index_bits' => 14,
                        'iccm_data_cell' => 'ram_16384x39',
                        'iccm_num_banks_8' => '',
                        'iccm_eadr' => '0xee07ffff',
                        'iccm_reserved' => '0x1000',
                        'iccm_region' => '0xe',
                        'iccm_offset' => '0xe000000',
                        'iccm_size_512' => '',
                        'iccm_size' => 512
                      },
            'dccm' => {
                        'dccm_rows' => '2048',
                        'dccm_eadr' => '0xf004ffff',
                        'dccm_sadr' => '0xf0040000',
                        'dccm_index_bits' => 11,
                        'dccm_size_64' => '',
                        'dccm_ecc_width' => 7,
                        'dccm_data_cell' => 'ram_2048x39',
                        'dccm_num_banks_8' => '',
                        'dccm_data_width' => 32,
                        'dccm_size' => 64,
                        'dccm_reserved' => '0x1000',
                        'dccm_enable' => '1',
                        'dccm_bank_bits' => 3,
                        'dccm_num_banks' => '8',
                        'dccm_bits' => 16,
                        'dccm_region' => '0xf',
                        'dccm_offset' => '0x40000',
                        'lsu_sb_bits' => 16,
                        'dccm_byte_width' => '4',
                        'dccm_fdata_width' => 39,
                        'dccm_width_bits' => 2
                      },
            'btb' => {
                       'btb_btag_fold' => 1,
                       'btb_addr_hi' => 5,
                       'btb_addr_lo' => '4',
                       'btb_index3_hi' => 9,
                       'btb_index1_lo' => '4',
                       'btb_btag_size' => 9,
                       'btb_index3_lo' => 8,
                       'btb_index2_hi' => 7,
                       'btb_index1_hi' => 5,
                       'btb_size' => 32,
                       'btb_array_depth' => 4,
                       'btb_index2_lo' => 6
                     },
            'triggers' => [
                            {
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ],
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ],
                              'poke_mask' => [
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
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ],
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ]
                            },
                            {
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ],
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ],
                              'poke_mask' => [
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
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ],
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ]
                            }
                          ],
            'retstack' => {
                            'ret_stack_size' => '4'
                          },
            'core' => {
                        'lsu_num_nbload' => '8',
                        'dec_instbuf_depth' => '4',
                        'dma_buf_depth' => '4',
                        'lsu_num_nbload_width' => '3',
                        'lsu_stbuf_depth' => '8'
                      },
            'testbench' => {
                             'build_ahb_lite' => '1',
                             'lderr_rollback' => '1',
                             'SDVT_AHB' => '1',
                             'datawidth' => '64',
                             'TOP' => 'tb_top',
                             'clock_period' => '100',
                             'ext_datawidth' => '64',
                             'RV_TOP' => '`TOP.rvtop',
                             'ext_addrwidth' => '32',
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'sterr_rollback' => '0',
                             'assert_on' => ''
                           },
            'even_odd_trigger_chains' => 'true',
            'bht' => {
                       'bht_ghr_pad' => 'fghr[4],3\'b0',
                       'bht_array_depth' => 16,
                       'bht_ghr_size' => 5,
                       'bht_ghr_range' => '4:0',
                       'bht_addr_hi' => 7,
                       'bht_ghr_pad2' => 'fghr[4:3],2\'b0',
                       'bht_size' => 128,
                       'bht_hash_string' => '{ghr[3:2] ^ {ghr[3+1], {4-1-2{1\'b0} } },hashin[5:4]^ghr[2-1:0]}',
                       'bht_addr_lo' => '4'
                     },
            'xlen' => 32,
            'reset_vec' => '0x80000000',
            'memmap' => {
                          'external_data_1' => '0x00000000',
                          'external_data' => '0xc0580000',
                          'external_prog' => '0xb0000000',
                          'serialio' => '0xd0580000',
                          'debug_sb_mem' => '0xb0580000'
                        },
            'harts' => 1,
            'pic' => {
                       'pic_total_int' => 8,
                       'pic_base_addr' => '0xf00c0000',
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_meipl_offset' => '0x0000',
                       'pic_offset' => '0xc0000',
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_bits' => 15,
                       'pic_size' => 32,
                       'pic_meipt_offset' => '0x3004',
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_meie_offset' => '0x2000',
                       'pic_int_words' => 1,
                       'pic_region' => '0xf',
                       'pic_total_int_plus1' => 9,
                       'pic_meip_offset' => '0x1000'
                     },
            'numiregs' => '32',
            'bus' => {
                       'ifu_bus_tag' => '3',
                       'sb_bus_tag' => '1',
                       'dma_bus_tag' => '1',
                       'lsu_bus_tag' => 4
                     }
          );
1;
