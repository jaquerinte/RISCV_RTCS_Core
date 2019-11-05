#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by irodrig on mar oct  1 12:16:46 CEST 2019
# 
#  cmd:    swerv -snapshot=default -ahb_lite 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'verilator' => '',
            'reset_vec' => '0x80000000',
            'numiregs' => '32',
            'core' => {
                        'lsu_stbuf_depth' => '8',
                        'lsu_num_nbload_width' => '3',
                        'dma_buf_depth' => '4',
                        'dec_instbuf_depth' => '4',
                        'lsu_num_nbload' => '8'
                      },
            'memmap' => {
                          'external_data' => '0xc0580000',
                          'debug_sb_mem' => '0xb0580000',
                          'external_data_1' => '0x00000000',
                          'serialio' => '0xd0580000',
                          'external_prog' => '0xb0000000'
                        },
            'max_mmode_perf_event' => '50',
            'csr' => {
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'mstatus' => {
                                      'mask' => '0x88',
                                      'exists' => 'true',
                                      'reset' => '0x1800'
                                    },
                       'meicurpl' => {
                                       'exists' => 'true',
                                       'mask' => '0xf',
                                       'number' => '0xbcc',
                                       'reset' => '0x0',
                                       'comment' => 'External interrupt current priority level.'
                                     },
                       'mhpmcounter5h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'mhpmevent6' => {
                                         'mask' => '0xffffffff',
                                         'exists' => 'true',
                                         'reset' => '0x0'
                                       },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'meipt' => {
                                    'comment' => 'External interrupt priority threshold.',
                                    'reset' => '0x0',
                                    'number' => '0xbc9',
                                    'mask' => '0xf',
                                    'exists' => 'true'
                                  },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter4h' => {
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff',
                                            'exists' => 'true'
                                          },
                       'mfdc' => {
                                   'number' => '0x7f9',
                                   'reset' => '0x00070000',
                                   'exists' => 'true',
                                   'mask' => '0x000707ff'
                                 },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'dicago' => {
                                     'exists' => 'true',
                                     'debug' => 'true',
                                     'mask' => '0x0',
                                     'number' => '0x7cb',
                                     'comment' => 'Cache diagnostics.',
                                     'reset' => '0x0'
                                   },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'mhpmcounter6h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'dmst' => {
                                   'exists' => 'true',
                                   'debug' => 'true',
                                   'mask' => '0x0',
                                   'number' => '0x7c4',
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.',
                                   'reset' => '0x0'
                                 },
                       'misa' => {
                                   'reset' => '0x40001104',
                                   'exists' => 'true',
                                   'mask' => '0x0'
                                 },
                       'miccmect' => {
                                       'exists' => 'true',
                                       'mask' => '0xffffffff',
                                       'number' => '0x7f1',
                                       'reset' => '0x0'
                                     },
                       'mhpmevent3' => {
                                         'exists' => 'true',
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0'
                                       },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'meicidpl' => {
                                       'number' => '0xbcb',
                                       'comment' => 'External interrupt claim id priority level.',
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'mask' => '0xf'
                                     },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'mimpid' => {
                                     'exists' => 'true',
                                     'mask' => '0x0',
                                     'reset' => '0x1'
                                   },
                       'mhpmcounter4' => {
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff',
                                           'exists' => 'true'
                                         },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'mip' => {
                                  'reset' => '0x0',
                                  'poke_mask' => '0x40000888',
                                  'exists' => 'true',
                                  'mask' => '0x0'
                                },
                       'micect' => {
                                     'reset' => '0x0',
                                     'number' => '0x7f0',
                                     'mask' => '0xffffffff',
                                     'exists' => 'true'
                                   },
                       'dcsr' => {
                                   'exists' => 'true',
                                   'mask' => '0x00008c04',
                                   'reset' => '0x40000003',
                                   'poke_mask' => '0x00008dcc'
                                 },
                       'marchid' => {
                                      'reset' => '0x0000000b',
                                      'mask' => '0x0',
                                      'exists' => 'true'
                                    },
                       'meicpct' => {
                                      'mask' => '0x0',
                                      'exists' => 'true',
                                      'reset' => '0x0',
                                      'comment' => 'External claim id/priority capture.',
                                      'number' => '0xbca'
                                    },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'mhpmevent5' => {
                                         'reset' => '0x0',
                                         'exists' => 'true',
                                         'mask' => '0xffffffff'
                                       },
                       'mie' => {
                                  'reset' => '0x0',
                                  'mask' => '0x40000888',
                                  'exists' => 'true'
                                },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'mcpc' => {
                                   'exists' => 'true',
                                   'mask' => '0x0',
                                   'number' => '0x7c2',
                                   'reset' => '0x0'
                                 },
                       'mhpmcounter3' => {
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff',
                                           'exists' => 'true'
                                         },
                       'dicawics' => {
                                       'debug' => 'true',
                                       'exists' => 'true',
                                       'mask' => '0x0130fffc',
                                       'number' => '0x7c8',
                                       'comment' => 'Cache diagnostics.',
                                       'reset' => '0x0'
                                     },
                       'mpmc' => {
                                   'exists' => 'true',
                                   'mask' => '0x0',
                                   'number' => '0x7c6',
                                   'reset' => '0x0',
                                   'comment' => 'Core pause: Implemented as read only.'
                                 },
                       'mdccmect' => {
                                       'exists' => 'true',
                                       'mask' => '0xffffffff',
                                       'number' => '0x7f2',
                                       'reset' => '0x0'
                                     },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'mcgc' => {
                                   'mask' => '0x000001ff',
                                   'exists' => 'true',
                                   'reset' => '0x0',
                                   'poke_mask' => '0x000001ff',
                                   'number' => '0x7f8'
                                 },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'tselect' => {
                                      'mask' => '0x3',
                                      'exists' => 'true',
                                      'reset' => '0x0'
                                    },
                       'mhpmcounter5' => {
                                           'mask' => '0xffffffff',
                                           'exists' => 'true',
                                           'reset' => '0x0'
                                         },
                       'dicad1' => {
                                     'mask' => '0x3',
                                     'exists' => 'true',
                                     'debug' => 'true',
                                     'comment' => 'Cache diagnostics.',
                                     'reset' => '0x0',
                                     'number' => '0x7ca'
                                   },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'mvendorid' => {
                                        'reset' => '0x45',
                                        'mask' => '0x0',
                                        'exists' => 'true'
                                      },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'mhpmevent4' => {
                                         'reset' => '0x0',
                                         'exists' => 'true',
                                         'mask' => '0xffffffff'
                                       },
                       'mhpmcounter6' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'dicad0' => {
                                     'number' => '0x7c9',
                                     'reset' => '0x0',
                                     'comment' => 'Cache diagnostics.',
                                     'debug' => 'true',
                                     'exists' => 'true',
                                     'mask' => '0xffffffff'
                                   },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'mhpmcounter3h' => {
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff',
                                            'exists' => 'true'
                                          }
                     },
            'even_odd_trigger_chains' => 'true',
            'iccm' => {
                        'iccm_size' => 512,
                        'iccm_index_bits' => 14,
                        'iccm_size_512' => '',
                        'iccm_sadr' => '0xee000000',
                        'iccm_region' => '0xe',
                        'iccm_bits' => 19,
                        'iccm_bank_bits' => 3,
                        'iccm_data_cell' => 'ram_16384x39',
                        'iccm_offset' => '0xe000000',
                        'iccm_eadr' => '0xee07ffff',
                        'iccm_num_banks_8' => '',
                        'iccm_rows' => '16384',
                        'iccm_reserved' => '0x1000',
                        'iccm_num_banks' => '8'
                      },
            'harts' => 1,
            'protection' => {
                              'inst_access_addr0' => '0x00000000',
                              'data_access_mask7' => '0xffffffff',
                              'data_access_enable6' => '0x0',
                              'inst_access_enable7' => '0x0',
                              'data_access_mask4' => '0xffffffff',
                              'data_access_addr5' => '0x00000000',
                              'data_access_mask1' => '0xffffffff',
                              'inst_access_mask7' => '0xffffffff',
                              'data_access_addr7' => '0x00000000',
                              'inst_access_mask5' => '0xffffffff',
                              'data_access_addr4' => '0x00000000',
                              'data_access_mask0' => '0xffffffff',
                              'inst_access_mask0' => '0xffffffff',
                              'data_access_mask2' => '0xffffffff',
                              'inst_access_addr7' => '0x00000000',
                              'inst_access_enable5' => '0x0',
                              'data_access_mask3' => '0xffffffff',
                              'inst_access_enable3' => '0x0',
                              'inst_access_mask2' => '0xffffffff',
                              'data_access_enable1' => '0x0',
                              'data_access_addr2' => '0x00000000',
                              'inst_access_addr2' => '0x00000000',
                              'data_access_addr1' => '0x00000000',
                              'inst_access_addr1' => '0x00000000',
                              'inst_access_mask1' => '0xffffffff',
                              'inst_access_mask4' => '0xffffffff',
                              'inst_access_addr5' => '0x00000000',
                              'data_access_enable2' => '0x0',
                              'inst_access_addr6' => '0x00000000',
                              'inst_access_mask6' => '0xffffffff',
                              'data_access_enable7' => '0x0',
                              'data_access_addr6' => '0x00000000',
                              'inst_access_enable0' => '0x0',
                              'inst_access_enable1' => '0x0',
                              'data_access_addr0' => '0x00000000',
                              'data_access_enable4' => '0x0',
                              'inst_access_addr3' => '0x00000000',
                              'data_access_mask6' => '0xffffffff',
                              'data_access_enable5' => '0x0',
                              'inst_access_enable4' => '0x0',
                              'inst_access_enable6' => '0x0',
                              'data_access_mask5' => '0xffffffff',
                              'data_access_enable3' => '0x0',
                              'inst_access_mask3' => '0xffffffff',
                              'inst_access_enable2' => '0x0',
                              'data_access_addr3' => '0x00000000',
                              'inst_access_addr4' => '0x00000000',
                              'data_access_enable0' => '0x0'
                            },
            'xlen' => 32,
            'physical' => '1',
            'target' => 'default',
            'tec_rv_icg' => 'clockhdr',
            'icache' => {
                          'icache_data_cell' => 'ram_256x34',
                          'icache_ic_rows' => '256',
                          'icache_tag_cell' => 'ram_64x21',
                          'icache_size' => 16,
                          'icache_tag_low' => '6',
                          'icache_taddr_high' => 5,
                          'icache_enable' => '1',
                          'icache_tag_high' => 12,
                          'icache_ic_index' => 8,
                          'icache_tag_depth' => 64,
                          'icache_ic_depth' => 8
                        },
            'retstack' => {
                            'ret_stack_size' => '4'
                          },
            'num_mmode_perf_regs' => '4',
            'nmi_vec' => '0x11110000',
            'bht' => {
                       'bht_ghr_pad2' => 'fghr[4:3],2\'b0',
                       'bht_size' => 128,
                       'bht_ghr_range' => '4:0',
                       'bht_ghr_pad' => 'fghr[4],3\'b0',
                       'bht_array_depth' => 16,
                       'bht_addr_hi' => 7,
                       'bht_hash_string' => '{ghr[3:2] ^ {ghr[3+1], {4-1-2{1\'b0} } },hashin[5:4]^ghr[2-1:0]}',
                       'bht_addr_lo' => '4',
                       'bht_ghr_size' => 5
                     },
            'bus' => {
                       'ifu_bus_tag' => '3',
                       'sb_bus_tag' => '1',
                       'lsu_bus_tag' => 4,
                       'dma_bus_tag' => '1'
                     },
            'triggers' => [
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
                            }
                          ],
            'dccm' => {
                        'dccm_ecc_width' => 7,
                        'dccm_size' => 64,
                        'dccm_num_banks' => '8',
                        'dccm_byte_width' => '4',
                        'dccm_rows' => '2048',
                        'dccm_reserved' => '0x1000',
                        'dccm_eadr' => '0xf004ffff',
                        'dccm_data_cell' => 'ram_2048x39',
                        'dccm_data_width' => 32,
                        'dccm_bits' => 16,
                        'dccm_sadr' => '0xf0040000',
                        'lsu_sb_bits' => 16,
                        'dccm_enable' => '1',
                        'dccm_size_64' => '',
                        'dccm_bank_bits' => 3,
                        'dccm_offset' => '0x40000',
                        'dccm_num_banks_8' => '',
                        'dccm_fdata_width' => 39,
                        'dccm_width_bits' => 2,
                        'dccm_index_bits' => 11,
                        'dccm_region' => '0xf'
                      },
            'regwidth' => '32',
            'btb' => {
                       'btb_index1_lo' => '4',
                       'btb_addr_hi' => 5,
                       'btb_addr_lo' => '4',
                       'btb_index3_lo' => 8,
                       'btb_btag_size' => 9,
                       'btb_size' => 32,
                       'btb_index1_hi' => 5,
                       'btb_index2_lo' => 6,
                       'btb_array_depth' => 4,
                       'btb_index3_hi' => 9,
                       'btb_btag_fold' => 1,
                       'btb_index2_hi' => 7
                     },
            'testbench' => {
                             'assert_on' => '',
                             'RV_TOP' => '`TOP.rvtop',
                             'ext_addrwidth' => '32',
                             'SDVT_AHB' => '1',
                             'ext_datawidth' => '64',
                             'clock_period' => '100',
                             'lderr_rollback' => '1',
                             'TOP' => 'tb_top',
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'datawidth' => '64',
                             'sterr_rollback' => '0',
                             'build_ahb_lite' => '1'
                           },
            'pic' => {
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_meie_offset' => '0x2000',
                       'pic_size' => 32,
                       'pic_total_int' => 8,
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_region' => '0xf',
                       'pic_meipt_offset' => '0x3004',
                       'pic_base_addr' => '0xf00c0000',
                       'pic_meipl_offset' => '0x0000',
                       'pic_total_int_plus1' => 9,
                       'pic_bits' => 15,
                       'pic_meip_offset' => '0x1000',
                       'pic_offset' => '0xc0000',
                       'pic_int_words' => 1
                     }
          );
1;
