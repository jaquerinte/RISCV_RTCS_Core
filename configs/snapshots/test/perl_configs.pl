#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by irodrig on mar dic 10 08:51:52 CET 2019
# 
#  cmd:    swerv -snapshot=test -ahb_lite 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'tec_rv_icg' => 'clockhdr',
            'testbench' => {
                             'build_ahb_lite' => '1',
                             'ext_addrwidth' => '32',
                             'datawidth' => '64',
                             'ext_datawidth' => '64',
                             'sterr_rollback' => '0',
                             'assert_on' => '',
                             'lderr_rollback' => '1',
                             'SDVT_AHB' => '1',
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'RV_TOP' => '`TOP.rvtop',
                             'TOP' => 'tb_top',
                             'clock_period' => '100'
                           },
            'reset_vec' => '0x80000000',
            'harts' => 1,
            'physical' => '1',
            'dccm' => {
                        'dccm_sadr' => '0xf0040000',
                        'dccm_reserved' => '0x1000',
                        'dccm_bits' => 16,
                        'dccm_index_bits' => 11,
                        'dccm_data_cell' => 'ram_2048x39',
                        'dccm_offset' => '0x40000',
                        'dccm_data_width' => 32,
                        'dccm_rows' => '2048',
                        'dccm_num_banks' => '8',
                        'dccm_bank_bits' => 3,
                        'dccm_enable' => '1',
                        'dccm_eadr' => '0xf004ffff',
                        'lsu_sb_bits' => 16,
                        'dccm_region' => '0xf',
                        'dccm_ecc_width' => 7,
                        'dccm_fdata_width' => 39,
                        'dccm_size' => 64,
                        'dccm_num_banks_8' => '',
                        'dccm_byte_width' => '4',
                        'dccm_size_64' => '',
                        'dccm_width_bits' => 2
                      },
            'verilator' => '',
            'btb' => {
                       'btb_index3_lo' => 8,
                       'btb_btag_size' => 9,
                       'btb_index1_lo' => '4',
                       'btb_addr_hi' => 5,
                       'btb_index2_lo' => 6,
                       'btb_index1_hi' => 5,
                       'btb_size' => 32,
                       'btb_index3_hi' => 9,
                       'btb_addr_lo' => '4',
                       'btb_array_depth' => 4,
                       'btb_index2_hi' => 7,
                       'btb_btag_fold' => 1
                     },
            'protection' => {
                              'inst_access_enable7' => '0x0',
                              'data_access_addr5' => '0x00000000',
                              'data_access_enable3' => '0x0',
                              'inst_access_mask5' => '0xffffffff',
                              'data_access_enable0' => '0x0',
                              'data_access_addr1' => '0x00000000',
                              'inst_access_mask3' => '0xffffffff',
                              'inst_access_mask6' => '0xffffffff',
                              'inst_access_addr0' => '0x00000000',
                              'data_access_mask3' => '0xffffffff',
                              'inst_access_enable1' => '0x0',
                              'inst_access_enable3' => '0x0',
                              'data_access_mask1' => '0xffffffff',
                              'data_access_enable5' => '0x0',
                              'inst_access_mask2' => '0xffffffff',
                              'inst_access_addr1' => '0x00000000',
                              'inst_access_enable4' => '0x0',
                              'inst_access_addr6' => '0x00000000',
                              'data_access_addr7' => '0x00000000',
                              'inst_access_enable0' => '0x0',
                              'inst_access_addr5' => '0x00000000',
                              'data_access_enable1' => '0x0',
                              'data_access_mask5' => '0xffffffff',
                              'data_access_addr3' => '0x00000000',
                              'data_access_addr2' => '0x00000000',
                              'inst_access_enable2' => '0x0',
                              'data_access_addr4' => '0x00000000',
                              'data_access_mask0' => '0xffffffff',
                              'data_access_addr6' => '0x00000000',
                              'data_access_mask7' => '0xffffffff',
                              'data_access_enable7' => '0x0',
                              'inst_access_addr3' => '0x00000000',
                              'inst_access_mask0' => '0xffffffff',
                              'inst_access_addr4' => '0x00000000',
                              'data_access_enable4' => '0x0',
                              'data_access_enable6' => '0x0',
                              'inst_access_mask7' => '0xffffffff',
                              'inst_access_enable5' => '0x0',
                              'inst_access_addr7' => '0x00000000',
                              'data_access_addr0' => '0x00000000',
                              'data_access_mask6' => '0xffffffff',
                              'inst_access_mask4' => '0xffffffff',
                              'inst_access_enable6' => '0x0',
                              'data_access_mask4' => '0xffffffff',
                              'inst_access_mask1' => '0xffffffff',
                              'data_access_mask2' => '0xffffffff',
                              'inst_access_addr2' => '0x00000000',
                              'data_access_enable2' => '0x0'
                            },
            'regwidth' => '32',
            'iccm' => {
                        'iccm_index_bits' => 14,
                        'iccm_offset' => '0xe000000',
                        'iccm_bits' => 19,
                        'iccm_reserved' => '0x1000',
                        'iccm_size' => 512,
                        'iccm_size_512' => '',
                        'iccm_data_cell' => 'ram_16384x39',
                        'iccm_bank_bits' => 3,
                        'iccm_rows' => '16384',
                        'iccm_eadr' => '0xee07ffff',
                        'iccm_region' => '0xe',
                        'iccm_sadr' => '0xee000000',
                        'iccm_num_banks' => '8',
                        'iccm_num_banks_8' => ''
                      },
            'memmap' => {
                          'external_data_1' => '0x00000000',
                          'debug_sb_mem' => '0xb0580000',
                          'external_data' => '0xc0580000',
                          'serialio' => '0xd0580000',
                          'external_prog' => '0xb0000000'
                        },
            'nmi_vec' => '0x11110000',
            'pic' => {
                       'pic_region' => '0xf',
                       'pic_size' => 32,
                       'pic_base_addr' => '0xf00c0000',
                       'pic_int_words' => 1,
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_total_int_plus1' => 9,
                       'pic_offset' => '0xc0000',
                       'pic_meipl_offset' => '0x0000',
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_meipt_offset' => '0x3004',
                       'pic_meip_offset' => '0x1000',
                       'pic_total_int' => 8,
                       'pic_meie_offset' => '0x2000',
                       'pic_bits' => 15
                     },
            'max_mmode_perf_event' => '50',
            'retstack' => {
                            'ret_stack_size' => '4'
                          },
            'numiregs' => '32',
            'core' => {
                        'dec_instbuf_depth' => '4',
                        'lsu_num_nbload' => '8',
                        'lsu_stbuf_depth' => '8',
                        'lsu_num_nbload_width' => '3',
                        'dma_buf_depth' => '4'
                      },
            'bus' => {
                       'dma_bus_tag' => '1',
                       'lsu_bus_tag' => 4,
                       'sb_bus_tag' => '1',
                       'ifu_bus_tag' => '3'
                     },
            'bht' => {
                       'bht_hash_string' => '{ghr[3:2] ^ {ghr[3+1], {4-1-2{1\'b0} } },hashin[5:4]^ghr[2-1:0]}',
                       'bht_ghr_pad2' => 'fghr[4:3],2\'b0',
                       'bht_size' => 128,
                       'bht_ghr_range' => '4:0',
                       'bht_addr_lo' => '4',
                       'bht_array_depth' => 16,
                       'bht_addr_hi' => 7,
                       'bht_ghr_pad' => 'fghr[4],3\'b0',
                       'bht_ghr_size' => 5
                     },
            'num_mmode_perf_regs' => '4',
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
            'csr' => {
                       'mstatus' => {
                                      'reset' => '0x1800',
                                      'exists' => 'true',
                                      'mask' => '0x88'
                                    },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'dmst' => {
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.',
                                   'exists' => 'true',
                                   'debug' => 'true',
                                   'number' => '0x7c4',
                                   'mask' => '0x0',
                                   'reset' => '0x0'
                                 },
                       'mhpmcounter6' => {
                                           'mask' => '0xffffffff',
                                           'exists' => 'true',
                                           'reset' => '0x0'
                                         },
                       'micect' => {
                                     'number' => '0x7f0',
                                     'mask' => '0xffffffff',
                                     'exists' => 'true',
                                     'reset' => '0x0'
                                   },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'marchid' => {
                                      'mask' => '0x0',
                                      'exists' => 'true',
                                      'reset' => '0x0000000b'
                                    },
                       'mhpmcounter4h' => {
                                            'reset' => '0x0',
                                            'exists' => 'true',
                                            'mask' => '0xffffffff'
                                          },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'mpmc' => {
                                   'reset' => '0x0',
                                   'comment' => 'Core pause: Implemented as read only.',
                                   'number' => '0x7c6',
                                   'mask' => '0x0',
                                   'exists' => 'true'
                                 },
                       'mhpmevent3' => {
                                         'reset' => '0x0',
                                         'exists' => 'true',
                                         'mask' => '0xffffffff'
                                       },
                       'mhpmcounter4' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'mhpmevent5' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'mdccmect' => {
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'mask' => '0xffffffff',
                                       'number' => '0x7f2'
                                     },
                       'meicidpl' => {
                                       'reset' => '0x0',
                                       'comment' => 'External interrupt claim id priority level.',
                                       'number' => '0xbcb',
                                       'mask' => '0xf',
                                       'exists' => 'true'
                                     },
                       'meipt' => {
                                    'reset' => '0x0',
                                    'comment' => 'External interrupt priority threshold.',
                                    'number' => '0xbc9',
                                    'mask' => '0xf',
                                    'exists' => 'true'
                                  },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'dicad1' => {
                                     'mask' => '0x3',
                                     'number' => '0x7ca',
                                     'debug' => 'true',
                                     'exists' => 'true',
                                     'comment' => 'Cache diagnostics.',
                                     'reset' => '0x0'
                                   },
                       'dicago' => {
                                     'reset' => '0x0',
                                     'exists' => 'true',
                                     'debug' => 'true',
                                     'number' => '0x7cb',
                                     'mask' => '0x0',
                                     'comment' => 'Cache diagnostics.'
                                   },
                       'misa' => {
                                   'reset' => '0x40001104',
                                   'mask' => '0x0',
                                   'exists' => 'true'
                                 },
                       'mhpmcounter5h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter3h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'mfdc' => {
                                   'mask' => '0x000707ff',
                                   'number' => '0x7f9',
                                   'exists' => 'true',
                                   'reset' => '0x00070000'
                                 },
                       'dcsr' => {
                                   'reset' => '0x40000003',
                                   'poke_mask' => '0x00008dcc',
                                   'exists' => 'true',
                                   'mask' => '0x00008c04'
                                 },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'miccmect' => {
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'mask' => '0xffffffff',
                                       'number' => '0x7f1'
                                     },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'dicawics' => {
                                       'comment' => 'Cache diagnostics.',
                                       'number' => '0x7c8',
                                       'mask' => '0x0130fffc',
                                       'debug' => 'true',
                                       'exists' => 'true',
                                       'reset' => '0x0'
                                     },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'mcgc' => {
                                   'reset' => '0x0',
                                   'poke_mask' => '0x000001ff',
                                   'number' => '0x7f8',
                                   'mask' => '0x000001ff',
                                   'exists' => 'true'
                                 },
                       'meicpct' => {
                                      'reset' => '0x0',
                                      'exists' => 'true',
                                      'mask' => '0x0',
                                      'number' => '0xbca',
                                      'comment' => 'External claim id/priority capture.'
                                    },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'meicurpl' => {
                                       'reset' => '0x0',
                                       'mask' => '0xf',
                                       'number' => '0xbcc',
                                       'exists' => 'true',
                                       'comment' => 'External interrupt current priority level.'
                                     },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'mie' => {
                                  'exists' => 'true',
                                  'mask' => '0x40000888',
                                  'reset' => '0x0'
                                },
                       'tselect' => {
                                      'mask' => '0x3',
                                      'exists' => 'true',
                                      'reset' => '0x0'
                                    },
                       'mhpmcounter3' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'mhpmcounter6h' => {
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff',
                                            'exists' => 'true'
                                          },
                       'mip' => {
                                  'exists' => 'true',
                                  'mask' => '0x0',
                                  'poke_mask' => '0x40000888',
                                  'reset' => '0x0'
                                },
                       'mhpmcounter5' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'dicad0' => {
                                     'reset' => '0x0',
                                     'number' => '0x7c9',
                                     'mask' => '0xffffffff',
                                     'debug' => 'true',
                                     'exists' => 'true',
                                     'comment' => 'Cache diagnostics.'
                                   },
                       'mcpc' => {
                                   'exists' => 'true',
                                   'mask' => '0x0',
                                   'number' => '0x7c2',
                                   'reset' => '0x0'
                                 },
                       'mhpmevent6' => {
                                         'mask' => '0xffffffff',
                                         'exists' => 'true',
                                         'reset' => '0x0'
                                       },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'mimpid' => {
                                     'mask' => '0x0',
                                     'exists' => 'true',
                                     'reset' => '0x1'
                                   },
                       'mhpmevent4' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'mvendorid' => {
                                        'reset' => '0x45',
                                        'mask' => '0x0',
                                        'exists' => 'true'
                                      },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     }
                     },
            'icache' => {
                          'icache_tag_depth' => 64,
                          'icache_tag_cell' => 'ram_64x21',
                          'icache_ic_index' => 8,
                          'icache_ic_depth' => 8,
                          'icache_size' => 16,
                          'icache_tag_low' => '6',
                          'icache_taddr_high' => 5,
                          'icache_ic_rows' => '256',
                          'icache_tag_high' => 12,
                          'icache_enable' => '1',
                          'icache_data_cell' => 'ram_256x34'
                        },
            'target' => 'default',
            'xlen' => 32,
            'even_odd_trigger_chains' => 'true'
          );
1;
