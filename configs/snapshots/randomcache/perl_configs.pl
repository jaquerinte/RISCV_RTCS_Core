#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by irodrig on mar dic 10 16:04:47 CET 2019
# 
#  cmd:    swerv -snapshot=randomcache -ahb_lite 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'nmi_vec' => '0x11110000',
            'pic' => {
                       'pic_meipl_offset' => '0x0000',
                       'pic_size' => 32,
                       'pic_meip_offset' => '0x1000',
                       'pic_total_int_plus1' => 9,
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_meie_offset' => '0x2000',
                       'pic_meipt_offset' => '0x3004',
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_int_words' => 1,
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_total_int' => 8,
                       'pic_base_addr' => '0xf00c0000',
                       'pic_region' => '0xf',
                       'pic_offset' => '0xc0000',
                       'pic_bits' => 15
                     },
            'core' => {
                        'lsu_num_nbload_width' => '3',
                        'lsu_num_nbload' => '8',
                        'lsu_stbuf_depth' => '8',
                        'dec_instbuf_depth' => '4',
                        'dma_buf_depth' => '4'
                      },
            'xlen' => 32,
            'icache' => {
                          'icache_ic_rows' => '256',
                          'icache_tag_low' => '6',
                          'icache_enable' => '1',
                          'icache_random_placement' => '0',
                          'icache_taddr_high' => 5,
                          'icache_tag_depth' => 64,
                          'icache_data_cell' => 'ram_256x34',
                          'icache_size' => 16,
                          'icache_ic_index' => 8,
                          'icache_ic_depth' => 8,
                          'icache_tag_high' => 12,
                          'icache_tag_cell' => 'ram_64x21'
                        },
            'protection' => {
                              'data_access_enable4' => '0x0',
                              'data_access_addr0' => '0x00000000',
                              'data_access_addr2' => '0x00000000',
                              'data_access_enable5' => '0x0',
                              'inst_access_enable2' => '0x0',
                              'data_access_mask6' => '0xffffffff',
                              'inst_access_mask7' => '0xffffffff',
                              'inst_access_addr1' => '0x00000000',
                              'data_access_enable6' => '0x0',
                              'inst_access_addr5' => '0x00000000',
                              'inst_access_enable6' => '0x0',
                              'data_access_addr6' => '0x00000000',
                              'inst_access_enable7' => '0x0',
                              'inst_access_enable3' => '0x0',
                              'data_access_mask3' => '0xffffffff',
                              'data_access_mask2' => '0xffffffff',
                              'data_access_addr5' => '0x00000000',
                              'inst_access_addr6' => '0x00000000',
                              'data_access_mask4' => '0xffffffff',
                              'inst_access_mask5' => '0xffffffff',
                              'inst_access_addr3' => '0x00000000',
                              'inst_access_addr7' => '0x00000000',
                              'inst_access_addr4' => '0x00000000',
                              'data_access_mask5' => '0xffffffff',
                              'data_access_enable1' => '0x0',
                              'inst_access_enable4' => '0x0',
                              'inst_access_enable1' => '0x0',
                              'data_access_mask1' => '0xffffffff',
                              'data_access_mask7' => '0xffffffff',
                              'data_access_addr1' => '0x00000000',
                              'inst_access_mask3' => '0xffffffff',
                              'inst_access_addr2' => '0x00000000',
                              'inst_access_mask6' => '0xffffffff',
                              'inst_access_enable0' => '0x0',
                              'inst_access_addr0' => '0x00000000',
                              'inst_access_mask1' => '0xffffffff',
                              'data_access_mask0' => '0xffffffff',
                              'data_access_addr4' => '0x00000000',
                              'inst_access_mask4' => '0xffffffff',
                              'data_access_addr3' => '0x00000000',
                              'data_access_enable2' => '0x0',
                              'data_access_addr7' => '0x00000000',
                              'data_access_enable3' => '0x0',
                              'inst_access_enable5' => '0x0',
                              'data_access_enable0' => '0x0',
                              'inst_access_mask2' => '0xffffffff',
                              'inst_access_mask0' => '0xffffffff',
                              'data_access_enable7' => '0x0'
                            },
            'memmap' => {
                          'external_data' => '0xc0580000',
                          'debug_sb_mem' => '0xb0580000',
                          'external_data_1' => '0x00000000',
                          'serialio' => '0xd0580000',
                          'external_prog' => '0xb0000000'
                        },
            'retstack' => {
                            'ret_stack_size' => '4'
                          },
            'numiregs' => '32',
            'even_odd_trigger_chains' => 'true',
            'max_mmode_perf_event' => '50',
            'physical' => '1',
            'verilator' => '',
            'reset_vec' => '0x80000000',
            'csr' => {
                       'dicad0' => {
                                     'mask' => '0xffffffff',
                                     'comment' => 'Cache diagnostics.',
                                     'debug' => 'true',
                                     'number' => '0x7c9',
                                     'exists' => 'true',
                                     'reset' => '0x0'
                                   },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'pmpcfg2' => {
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
                       'mhpmcounter5' => {
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0',
                                           'exists' => 'true'
                                         },
                       'mhpmevent5' => {
                                         'exists' => 'true',
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff'
                                       },
                       'mhpmcounter4h' => {
                                            'exists' => 'true',
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff'
                                          },
                       'marchid' => {
                                      'exists' => 'true',
                                      'reset' => '0x0000000b',
                                      'mask' => '0x0'
                                    },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'mhpmevent6' => {
                                         'reset' => '0x0',
                                         'exists' => 'true',
                                         'mask' => '0xffffffff'
                                       },
                       'mhpmcounter5h' => {
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0',
                                            'exists' => 'true'
                                          },
                       'mhpmcounter3' => {
                                           'mask' => '0xffffffff',
                                           'exists' => 'true',
                                           'reset' => '0x0'
                                         },
                       'meicurpl' => {
                                       'number' => '0xbcc',
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'mask' => '0xf',
                                       'comment' => 'External interrupt current priority level.'
                                     },
                       'mpmc' => {
                                   'reset' => '0x0',
                                   'exists' => 'true',
                                   'number' => '0x7c6',
                                   'comment' => 'Core pause: Implemented as read only.',
                                   'mask' => '0x0'
                                 },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'misa' => {
                                   'mask' => '0x0',
                                   'exists' => 'true',
                                   'reset' => '0x40001104'
                                 },
                       'mhpmevent3' => {
                                         'exists' => 'true',
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff'
                                       },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter6h' => {
                                            'exists' => 'true',
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff'
                                          },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'dcsr' => {
                                   'mask' => '0x00008c04',
                                   'poke_mask' => '0x00008dcc',
                                   'exists' => 'true',
                                   'reset' => '0x40000003'
                                 },
                       'mhpmcounter4' => {
                                           'exists' => 'true',
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff'
                                         },
                       'micect' => {
                                     'mask' => '0xffffffff',
                                     'number' => '0x7f0',
                                     'exists' => 'true',
                                     'reset' => '0x0'
                                   },
                       'dmst' => {
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.',
                                   'mask' => '0x0',
                                   'reset' => '0x0',
                                   'exists' => 'true',
                                   'debug' => 'true',
                                   'number' => '0x7c4'
                                 },
                       'mip' => {
                                  'mask' => '0x0',
                                  'reset' => '0x0',
                                  'exists' => 'true',
                                  'poke_mask' => '0x40000888'
                                },
                       'meicpct' => {
                                      'number' => '0xbca',
                                      'reset' => '0x0',
                                      'exists' => 'true',
                                      'mask' => '0x0',
                                      'comment' => 'External claim id/priority capture.'
                                    },
                       'mcpc' => {
                                   'mask' => '0x0',
                                   'exists' => 'true',
                                   'reset' => '0x0',
                                   'number' => '0x7c2'
                                 },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'mhpmcounter6' => {
                                           'mask' => '0xffffffff',
                                           'exists' => 'true',
                                           'reset' => '0x0'
                                         },
                       'mhpmcounter3h' => {
                                            'reset' => '0x0',
                                            'exists' => 'true',
                                            'mask' => '0xffffffff'
                                          },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'miccmect' => {
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'number' => '0x7f1',
                                       'mask' => '0xffffffff'
                                     },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'meipt' => {
                                    'comment' => 'External interrupt priority threshold.',
                                    'mask' => '0xf',
                                    'exists' => 'true',
                                    'reset' => '0x0',
                                    'number' => '0xbc9'
                                  },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'dicago' => {
                                     'debug' => 'true',
                                     'number' => '0x7cb',
                                     'exists' => 'true',
                                     'reset' => '0x0',
                                     'mask' => '0x0',
                                     'comment' => 'Cache diagnostics.'
                                   },
                       'meicidpl' => {
                                       'exists' => 'true',
                                       'reset' => '0x0',
                                       'number' => '0xbcb',
                                       'comment' => 'External interrupt claim id priority level.',
                                       'mask' => '0xf'
                                     },
                       'mie' => {
                                  'mask' => '0x40000888',
                                  'reset' => '0x0',
                                  'exists' => 'true'
                                },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'mcgc' => {
                                   'poke_mask' => '0x000001ff',
                                   'exists' => 'true',
                                   'reset' => '0x0',
                                   'number' => '0x7f8',
                                   'mask' => '0x000001ff'
                                 },
                       'mvendorid' => {
                                        'exists' => 'true',
                                        'reset' => '0x45',
                                        'mask' => '0x0'
                                      },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'mdccmect' => {
                                       'number' => '0x7f2',
                                       'exists' => 'true',
                                       'reset' => '0x0',
                                       'mask' => '0xffffffff'
                                     },
                       'tselect' => {
                                      'mask' => '0x3',
                                      'reset' => '0x0',
                                      'exists' => 'true'
                                    },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'mimpid' => {
                                     'exists' => 'true',
                                     'reset' => '0x1',
                                     'mask' => '0x0'
                                   },
                       'dicad1' => {
                                     'reset' => '0x0',
                                     'exists' => 'true',
                                     'number' => '0x7ca',
                                     'debug' => 'true',
                                     'comment' => 'Cache diagnostics.',
                                     'mask' => '0x3'
                                   },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'mstatus' => {
                                      'reset' => '0x1800',
                                      'exists' => 'true',
                                      'mask' => '0x88'
                                    },
                       'dicawics' => {
                                       'mask' => '0x0130fffc',
                                       'comment' => 'Cache diagnostics.',
                                       'debug' => 'true',
                                       'number' => '0x7c8',
                                       'reset' => '0x0',
                                       'exists' => 'true'
                                     },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'mfdc' => {
                                   'reset' => '0x00070000',
                                   'exists' => 'true',
                                   'number' => '0x7f9',
                                   'mask' => '0x000707ff'
                                 }
                     },
            'iccm' => {
                        'iccm_size' => 512,
                        'iccm_num_banks' => '8',
                        'iccm_bank_bits' => 3,
                        'iccm_reserved' => '0x1000',
                        'iccm_size_512' => '',
                        'iccm_sadr' => '0xee000000',
                        'iccm_bits' => 19,
                        'iccm_eadr' => '0xee07ffff',
                        'iccm_index_bits' => 14,
                        'iccm_rows' => '16384',
                        'iccm_data_cell' => 'ram_16384x39',
                        'iccm_num_banks_8' => '',
                        'iccm_region' => '0xe',
                        'iccm_offset' => '0xe000000'
                      },
            'btb' => {
                       'btb_index2_lo' => 6,
                       'btb_index3_lo' => 8,
                       'btb_index2_hi' => 7,
                       'btb_btag_fold' => 1,
                       'btb_addr_lo' => '4',
                       'btb_addr_hi' => 5,
                       'btb_array_depth' => 4,
                       'btb_size' => 32,
                       'btb_btag_size' => 9,
                       'btb_index1_lo' => '4',
                       'btb_index1_hi' => 5,
                       'btb_index3_hi' => 9
                     },
            'tec_rv_icg' => 'clockhdr',
            'harts' => 1,
            'bht' => {
                       'bht_ghr_pad2' => 'fghr[4:3],2\'b0',
                       'bht_addr_lo' => '4',
                       'bht_addr_hi' => 7,
                       'bht_ghr_pad' => 'fghr[4],3\'b0',
                       'bht_array_depth' => 16,
                       'bht_ghr_range' => '4:0',
                       'bht_ghr_size' => 5,
                       'bht_hash_string' => '{ghr[3:2] ^ {ghr[3+1], {4-1-2{1\'b0} } },hashin[5:4]^ghr[2-1:0]}',
                       'bht_size' => 128
                     },
            'triggers' => [
                            {
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ],
                              'poke_mask' => [
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
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ],
                              'poke_mask' => [
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
            'num_mmode_perf_regs' => '4',
            'regwidth' => '32',
            'dccm' => {
                        'dccm_num_banks' => '8',
                        'dccm_fdata_width' => 39,
                        'dccm_bank_bits' => 3,
                        'dccm_ecc_width' => 7,
                        'dccm_enable' => '1',
                        'dccm_byte_width' => '4',
                        'dccm_num_banks_8' => '',
                        'dccm_width_bits' => 2,
                        'dccm_data_width' => 32,
                        'dccm_rows' => '2048',
                        'dccm_size_64' => '',
                        'dccm_eadr' => '0xf004ffff',
                        'lsu_sb_bits' => 16,
                        'dccm_data_cell' => 'ram_2048x39',
                        'dccm_offset' => '0x40000',
                        'dccm_reserved' => '0x1000',
                        'dccm_sadr' => '0xf0040000',
                        'dccm_region' => '0xf',
                        'dccm_bits' => 16,
                        'dccm_index_bits' => 11,
                        'dccm_size' => 64
                      },
            'bus' => {
                       'lsu_bus_tag' => 4,
                       'ifu_bus_tag' => '3',
                       'sb_bus_tag' => '1',
                       'dma_bus_tag' => '1'
                     },
            'target' => 'default',
            'testbench' => {
                             'SDVT_AHB' => '1',
                             'build_ahb_lite' => '1',
                             'assert_on' => '',
                             'ext_addrwidth' => '32',
                             'lderr_rollback' => '1',
                             'sterr_rollback' => '0',
                             'ext_datawidth' => '64',
                             'datawidth' => '64',
                             'TOP' => 'tb_top',
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'clock_period' => '100',
                             'RV_TOP' => '`TOP.rvtop'
                           }
          );
1;
