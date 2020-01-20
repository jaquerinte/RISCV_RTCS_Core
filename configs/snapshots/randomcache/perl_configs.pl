#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by irodrig on lun ene 20 13:55:30 CET 2020
# 
#  cmd:    swerv -snapshot=randomcache -ahb_lite 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'testbench' => {
                             'lderr_rollback' => '1',
                             'clock_period' => '100',
                             'build_ahb_lite' => '1',
                             'sterr_rollback' => '0',
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'ext_addrwidth' => '32',
                             'datawidth' => '64',
                             'ext_datawidth' => '64',
                             'SDVT_AHB' => '1',
                             'TOP' => 'tb_top',
                             'RV_TOP' => '`TOP.rvtop',
                             'assert_on' => ''
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
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
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
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ],
                              'poke_mask' => [
                                               '0x081818c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ]
                            }
                          ],
            'reset_vec' => '0x80000000',
            'max_mmode_perf_event' => '50',
            'dccm' => {
                        'dccm_region' => '0xf',
                        'dccm_index_bits' => 11,
                        'dccm_offset' => '0x40000',
                        'dccm_rows' => '2048',
                        'dccm_reserved' => '0x1000',
                        'dccm_num_banks' => '8',
                        'dccm_bank_bits' => 3,
                        'dccm_data_width' => 32,
                        'lsu_sb_bits' => 16,
                        'dccm_fdata_width' => 39,
                        'dccm_enable' => '1',
                        'dccm_byte_width' => '4',
                        'dccm_size_64' => '',
                        'dccm_sadr' => '0xf0040000',
                        'dccm_width_bits' => 2,
                        'dccm_ecc_width' => 7,
                        'dccm_bits' => 16,
                        'dccm_num_banks_8' => '',
                        'dccm_size' => 64,
                        'dccm_eadr' => '0xf004ffff',
                        'dccm_data_cell' => 'ram_2048x39'
                      },
            'numiregs' => '32',
            'memmap' => {
                          'external_prog' => '0xb0000000',
                          'external_data_1' => '0x00000000',
                          'external_data' => '0xc0580000',
                          'debug_sb_mem' => '0xb0580000',
                          'serialio' => '0xd0580000'
                        },
            'btb' => {
                       'btb_index1_lo' => '4',
                       'btb_index2_hi' => 7,
                       'btb_index3_hi' => 9,
                       'btb_size' => 32,
                       'btb_btag_size' => 9,
                       'btb_addr_hi' => 5,
                       'btb_btag_fold' => 1,
                       'btb_index2_lo' => 6,
                       'btb_index1_hi' => 5,
                       'btb_array_depth' => 4,
                       'btb_addr_lo' => '4',
                       'btb_index3_lo' => 8
                     },
            'regwidth' => '32',
            'even_odd_trigger_chains' => 'true',
            'harts' => 1,
            'csr' => {
                       'marchid' => {
                                      'mask' => '0x0',
                                      'reset' => '0x0000000b',
                                      'exists' => 'true'
                                    },
                       'mpmc' => {
                                   'comment' => 'Core pause: Implemented as read only.',
                                   'reset' => '0x0',
                                   'mask' => '0x0',
                                   'exists' => 'true',
                                   'number' => '0x7c6'
                                 },
                       'mhpmcounter6h' => {
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff',
                                            'exists' => 'true'
                                          },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter3h' => {
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff',
                                            'exists' => 'true'
                                          },
                       'dicago' => {
                                     'reset' => '0x0',
                                     'mask' => '0x0',
                                     'comment' => 'Cache diagnostics.',
                                     'exists' => 'true',
                                     'number' => '0x7cb',
                                     'debug' => 'true'
                                   },
                       'mcpc' => {
                                   'exists' => 'true',
                                   'number' => '0x7c2',
                                   'mask' => '0x0',
                                   'reset' => '0x0'
                                 },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'meipt' => {
                                    'number' => '0xbc9',
                                    'exists' => 'true',
                                    'reset' => '0x0',
                                    'mask' => '0xf',
                                    'comment' => 'External interrupt priority threshold.'
                                  },
                       'dicad0' => {
                                     'exists' => 'true',
                                     'number' => '0x7c9',
                                     'debug' => 'true',
                                     'reset' => '0x0',
                                     'mask' => '0xffffffff',
                                     'comment' => 'Cache diagnostics.'
                                   },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'meicurpl' => {
                                       'reset' => '0x0',
                                       'mask' => '0xf',
                                       'comment' => 'External interrupt current priority level.',
                                       'number' => '0xbcc',
                                       'exists' => 'true'
                                     },
                       'miccmect' => {
                                       'number' => '0x7f1',
                                       'exists' => 'true',
                                       'mask' => '0xffffffff',
                                       'reset' => '0x0'
                                     },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'meicidpl' => {
                                       'comment' => 'External interrupt claim id priority level.',
                                       'mask' => '0xf',
                                       'reset' => '0x0',
                                       'number' => '0xbcb',
                                       'exists' => 'true'
                                     },
                       'mhpmevent3' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'mimpid' => {
                                     'mask' => '0x0',
                                     'reset' => '0x1',
                                     'exists' => 'true'
                                   },
                       'mdccmect' => {
                                       'number' => '0x7f2',
                                       'exists' => 'true',
                                       'reset' => '0x0',
                                       'mask' => '0xffffffff'
                                     },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'dcsr' => {
                                   'mask' => '0x00008c04',
                                   'reset' => '0x40000003',
                                   'poke_mask' => '0x00008dcc',
                                   'exists' => 'true'
                                 },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'mhpmevent4' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'mfdc' => {
                                   'mask' => '0x000707ff',
                                   'reset' => '0x00070000',
                                   'number' => '0x7f9',
                                   'exists' => 'true'
                                 },
                       'meicpct' => {
                                      'reset' => '0x0',
                                      'mask' => '0x0',
                                      'comment' => 'External claim id/priority capture.',
                                      'exists' => 'true',
                                      'number' => '0xbca'
                                    },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'dicawics' => {
                                       'exists' => 'true',
                                       'number' => '0x7c8',
                                       'debug' => 'true',
                                       'mask' => '0x0130fffc',
                                       'reset' => '0x0',
                                       'comment' => 'Cache diagnostics.'
                                     },
                       'mcgc' => {
                                   'reset' => '0x0',
                                   'mask' => '0x000001ff',
                                   'exists' => 'true',
                                   'poke_mask' => '0x000001ff',
                                   'number' => '0x7f8'
                                 },
                       'mhpmcounter4' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'mhpmcounter6' => {
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0',
                                           'exists' => 'true'
                                         },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'dicad1' => {
                                     'debug' => 'true',
                                     'exists' => 'true',
                                     'number' => '0x7ca',
                                     'comment' => 'Cache diagnostics.',
                                     'reset' => '0x0',
                                     'mask' => '0x3'
                                   },
                       'mhpmevent6' => {
                                         'exists' => 'true',
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff'
                                       },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'micect' => {
                                     'exists' => 'true',
                                     'number' => '0x7f0',
                                     'mask' => '0xffffffff',
                                     'reset' => '0x0'
                                   },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'mvendorid' => {
                                        'reset' => '0x45',
                                        'mask' => '0x0',
                                        'exists' => 'true'
                                      },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'mhpmcounter5h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter4h' => {
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff',
                                            'exists' => 'true'
                                          },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'mhpmcounter3' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'mstatus' => {
                                      'reset' => '0x1800',
                                      'mask' => '0x88',
                                      'exists' => 'true'
                                    },
                       'mhpmcounter5' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'mip' => {
                                  'mask' => '0x0',
                                  'reset' => '0x0',
                                  'poke_mask' => '0x40000888',
                                  'exists' => 'true'
                                },
                       'mie' => {
                                  'exists' => 'true',
                                  'reset' => '0x0',
                                  'mask' => '0x40000888'
                                },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'dmst' => {
                                   'debug' => 'true',
                                   'exists' => 'true',
                                   'number' => '0x7c4',
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.',
                                   'reset' => '0x0',
                                   'mask' => '0x0'
                                 },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'mhpmevent5' => {
                                         'exists' => 'true',
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0'
                                       },
                       'tselect' => {
                                      'exists' => 'true',
                                      'mask' => '0x3',
                                      'reset' => '0x0'
                                    },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'misa' => {
                                   'exists' => 'true',
                                   'mask' => '0x0',
                                   'reset' => '0x40001104'
                                 }
                     },
            'verilator' => '',
            'retstack' => {
                            'ret_stack_size' => '4'
                          },
            'core' => {
                        'lsu_num_nbload' => '8',
                        'dma_buf_depth' => '4',
                        'lsu_num_nbload_width' => '3',
                        'lsu_stbuf_depth' => '8',
                        'dec_instbuf_depth' => '4'
                      },
            'tec_rv_icg' => 'clockhdr',
            'protection' => {
                              'inst_access_enable0' => '0x0',
                              'data_access_mask4' => '0xffffffff',
                              'data_access_mask5' => '0xffffffff',
                              'data_access_addr1' => '0x00000000',
                              'inst_access_addr0' => '0x00000000',
                              'inst_access_addr3' => '0x00000000',
                              'data_access_addr5' => '0x00000000',
                              'data_access_enable7' => '0x0',
                              'data_access_mask7' => '0xffffffff',
                              'inst_access_enable2' => '0x0',
                              'data_access_enable6' => '0x0',
                              'inst_access_mask4' => '0xffffffff',
                              'data_access_mask2' => '0xffffffff',
                              'data_access_enable1' => '0x0',
                              'inst_access_enable6' => '0x0',
                              'inst_access_addr6' => '0x00000000',
                              'data_access_addr4' => '0x00000000',
                              'data_access_mask0' => '0xffffffff',
                              'inst_access_mask2' => '0xffffffff',
                              'inst_access_mask6' => '0xffffffff',
                              'inst_access_addr7' => '0x00000000',
                              'inst_access_enable1' => '0x0',
                              'inst_access_addr4' => '0x00000000',
                              'inst_access_addr5' => '0x00000000',
                              'data_access_addr2' => '0x00000000',
                              'inst_access_mask3' => '0xffffffff',
                              'inst_access_enable3' => '0x0',
                              'inst_access_addr1' => '0x00000000',
                              'inst_access_enable5' => '0x0',
                              'inst_access_mask5' => '0xffffffff',
                              'data_access_mask6' => '0xffffffff',
                              'data_access_enable5' => '0x0',
                              'data_access_addr0' => '0x00000000',
                              'inst_access_mask1' => '0xffffffff',
                              'inst_access_enable7' => '0x0',
                              'data_access_addr3' => '0x00000000',
                              'inst_access_addr2' => '0x00000000',
                              'data_access_enable0' => '0x0',
                              'inst_access_mask7' => '0xffffffff',
                              'inst_access_enable4' => '0x0',
                              'data_access_enable2' => '0x0',
                              'data_access_addr7' => '0x00000000',
                              'data_access_addr6' => '0x00000000',
                              'data_access_mask1' => '0xffffffff',
                              'data_access_enable3' => '0x0',
                              'data_access_mask3' => '0xffffffff',
                              'data_access_enable4' => '0x0',
                              'inst_access_mask0' => '0xffffffff'
                            },
            'nmi_vec' => '0x11110000',
            'target' => 'default',
            'icache' => {
                          'icache_tag_low' => '6',
                          'icache_tag_high' => 12,
                          'icache_random_placement' => '0',
                          'icache_tag_depth' => 64,
                          'icache_tag_cell' => 'ram_64x21',
                          'icache_data_cell' => 'ram_256x34',
                          'icache_enable' => '1',
                          'icache_ic_rows' => '256',
                          'icache_size' => 16,
                          'icache_ic_depth' => 8,
                          'icache_ic_index' => 8,
                          'icache_taddr_high' => 5
                        },
            'num_mmode_perf_regs' => '4',
            'iccm' => {
                        'iccm_size' => 512,
                        'iccm_rows' => '16384',
                        'iccm_index_bits' => 14,
                        'iccm_offset' => '0xe000000',
                        'iccm_region' => '0xe',
                        'iccm_reserved' => '0x1000',
                        'iccm_sadr' => '0xee000000',
                        'iccm_size_512' => '',
                        'iccm_bank_bits' => 3,
                        'iccm_data_cell' => 'ram_16384x39',
                        'iccm_eadr' => '0xee07ffff',
                        'iccm_num_banks' => '8',
                        'iccm_num_banks_8' => '',
                        'iccm_bits' => 19
                      },
            'physical' => '1',
            'bus' => {
                       'dma_bus_tag' => '1',
                       'ifu_bus_tag' => '3',
                       'sb_bus_tag' => '1',
                       'lsu_bus_tag' => 4
                     },
            'xlen' => 32,
            'bht' => {
                       'bht_addr_hi' => 7,
                       'bht_ghr_pad' => 'fghr[4],3\'b0',
                       'bht_hash_string' => '{ghr[3:2] ^ {ghr[3+1], {4-1-2{1\'b0} } },hashin[5:4]^ghr[2-1:0]}',
                       'bht_ghr_pad2' => 'fghr[4:3],2\'b0',
                       'bht_addr_lo' => '4',
                       'bht_size' => 128,
                       'bht_ghr_size' => 5,
                       'bht_array_depth' => 16,
                       'bht_ghr_range' => '4:0'
                     },
            'pic' => {
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_meipl_offset' => '0x0000',
                       'pic_bits' => 15,
                       'pic_size' => 32,
                       'pic_offset' => '0xc0000',
                       'pic_int_words' => 1,
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_meie_offset' => '0x2000',
                       'pic_total_int_plus1' => 9,
                       'pic_base_addr' => '0xf00c0000',
                       'pic_meipt_offset' => '0x3004',
                       'pic_meip_offset' => '0x1000',
                       'pic_region' => '0xf',
                       'pic_total_int' => 8
                     }
          );
1;
