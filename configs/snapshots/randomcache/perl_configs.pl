#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by irodrig on lun ene 20 12:07:30 CET 2020
# 
#  cmd:    swerv -snapshot=randomcache -ahb_lite 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'protection' => {
                              'data_access_mask2' => '0xffffffff',
                              'data_access_enable1' => '0x0',
                              'inst_access_addr2' => '0x00000000',
                              'data_access_addr6' => '0x00000000',
                              'data_access_mask4' => '0xffffffff',
                              'inst_access_addr6' => '0x00000000',
                              'inst_access_enable6' => '0x0',
                              'inst_access_mask0' => '0xffffffff',
                              'data_access_addr0' => '0x00000000',
                              'data_access_enable3' => '0x0',
                              'inst_access_enable0' => '0x0',
                              'inst_access_enable3' => '0x0',
                              'data_access_mask1' => '0xffffffff',
                              'data_access_mask3' => '0xffffffff',
                              'inst_access_enable7' => '0x0',
                              'data_access_addr3' => '0x00000000',
                              'inst_access_enable5' => '0x0',
                              'inst_access_addr1' => '0x00000000',
                              'inst_access_mask5' => '0xffffffff',
                              'data_access_mask0' => '0xffffffff',
                              'inst_access_enable4' => '0x0',
                              'inst_access_enable2' => '0x0',
                              'data_access_enable6' => '0x0',
                              'data_access_addr7' => '0x00000000',
                              'inst_access_mask7' => '0xffffffff',
                              'inst_access_enable1' => '0x0',
                              'inst_access_addr0' => '0x00000000',
                              'inst_access_mask2' => '0xffffffff',
                              'data_access_addr2' => '0x00000000',
                              'data_access_addr4' => '0x00000000',
                              'data_access_addr1' => '0x00000000',
                              'data_access_enable5' => '0x0',
                              'data_access_enable4' => '0x0',
                              'data_access_mask5' => '0xffffffff',
                              'data_access_enable0' => '0x0',
                              'inst_access_mask1' => '0xffffffff',
                              'inst_access_mask4' => '0xffffffff',
                              'inst_access_addr4' => '0x00000000',
                              'data_access_enable2' => '0x0',
                              'inst_access_mask6' => '0xffffffff',
                              'inst_access_mask3' => '0xffffffff',
                              'data_access_mask7' => '0xffffffff',
                              'inst_access_addr7' => '0x00000000',
                              'inst_access_addr5' => '0x00000000',
                              'data_access_addr5' => '0x00000000',
                              'data_access_enable7' => '0x0',
                              'inst_access_addr3' => '0x00000000',
                              'data_access_mask6' => '0xffffffff'
                            },
            'even_odd_trigger_chains' => 'true',
            'retstack' => {
                            'ret_stack_size' => '4'
                          },
            'tec_rv_icg' => 'clockhdr',
            'physical' => '1',
            'num_mmode_perf_regs' => '4',
            'nmi_vec' => '0x11110000',
            'iccm' => {
                        'iccm_region' => '0xe',
                        'iccm_size' => 512,
                        'iccm_bits' => 19,
                        'iccm_bank_bits' => 3,
                        'iccm_rows' => '16384',
                        'iccm_sadr' => '0xee000000',
                        'iccm_index_bits' => 14,
                        'iccm_data_cell' => 'ram_16384x39',
                        'iccm_num_banks_8' => '',
                        'iccm_offset' => '0xe000000',
                        'iccm_reserved' => '0x1000',
                        'iccm_num_banks' => '8',
                        'iccm_eadr' => '0xee07ffff',
                        'iccm_size_512' => ''
                      },
            'pic' => {
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_bits' => 15,
                       'pic_total_int' => 8,
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_offset' => '0xc0000',
                       'pic_region' => '0xf',
                       'pic_meie_offset' => '0x2000',
                       'pic_meip_offset' => '0x1000',
                       'pic_size' => 32,
                       'pic_meipt_offset' => '0x3004',
                       'pic_total_int_plus1' => 9,
                       'pic_int_words' => 1,
                       'pic_meipl_offset' => '0x0000',
                       'pic_base_addr' => '0xf00c0000'
                     },
            'reset_vec' => '0x80000000',
            'btb' => {
                       'btb_index3_hi' => 9,
                       'btb_index1_lo' => '4',
                       'btb_index3_lo' => 8,
                       'btb_index2_hi' => 7,
                       'btb_btag_fold' => 1,
                       'btb_btag_size' => 9,
                       'btb_addr_lo' => '4',
                       'btb_index1_hi' => 5,
                       'btb_size' => 32,
                       'btb_index2_lo' => 6,
                       'btb_array_depth' => 4,
                       'btb_addr_hi' => 5
                     },
            'memmap' => {
                          'serialio' => '0xd0580000',
                          'external_data_1' => '0x00000000',
                          'external_data' => '0xc0580000',
                          'external_prog' => '0xb0000000',
                          'debug_sb_mem' => '0xb0580000'
                        },
            'verilator' => '',
            'xlen' => 32,
            'harts' => 1,
            'csr' => {
                       'mpmc' => {
                                   'number' => '0x7c6',
                                   'exists' => 'true',
                                   'reset' => '0x0',
                                   'comment' => 'Core pause: Implemented as read only.',
                                   'mask' => '0x0'
                                 },
                       'meicpct' => {
                                      'reset' => '0x0',
                                      'exists' => 'true',
                                      'comment' => 'External claim id/priority capture.',
                                      'mask' => '0x0',
                                      'number' => '0xbca'
                                    },
                       'mhpmevent6' => {
                                         'reset' => '0x0',
                                         'exists' => 'true',
                                         'mask' => '0xffffffff'
                                       },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'mfdc' => {
                                   'number' => '0x7f9',
                                   'mask' => '0x000707ff',
                                   'exists' => 'true',
                                   'reset' => '0x00070000'
                                 },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'micect' => {
                                     'number' => '0x7f0',
                                     'reset' => '0x0',
                                     'exists' => 'true',
                                     'mask' => '0xffffffff'
                                   },
                       'mhpmevent5' => {
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0',
                                         'exists' => 'true'
                                       },
                       'mhpmevent3' => {
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0',
                                         'exists' => 'true'
                                       },
                       'mhpmcounter3' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'dmst' => {
                                   'mask' => '0x0',
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.',
                                   'exists' => 'true',
                                   'reset' => '0x0',
                                   'debug' => 'true',
                                   'number' => '0x7c4'
                                 },
                       'mdccmect' => {
                                       'number' => '0x7f2',
                                       'exists' => 'true',
                                       'reset' => '0x0',
                                       'mask' => '0xffffffff'
                                     },
                       'meicurpl' => {
                                       'comment' => 'External interrupt current priority level.',
                                       'exists' => 'true',
                                       'reset' => '0x0',
                                       'mask' => '0xf',
                                       'number' => '0xbcc'
                                     },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'dicad1' => {
                                     'mask' => '0x3',
                                     'exists' => 'true',
                                     'reset' => '0x0',
                                     'comment' => 'Cache diagnostics.',
                                     'number' => '0x7ca',
                                     'debug' => 'true'
                                   },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'tselect' => {
                                      'mask' => '0x3',
                                      'reset' => '0x0',
                                      'exists' => 'true'
                                    },
                       'mhpmcounter4' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter5' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'miccmect' => {
                                       'mask' => '0xffffffff',
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'number' => '0x7f1'
                                     },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'mhpmcounter3h' => {
                                            'mask' => '0xffffffff',
                                            'exists' => 'true',
                                            'reset' => '0x0'
                                          },
                       'meicidpl' => {
                                       'comment' => 'External interrupt claim id priority level.',
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'mask' => '0xf',
                                       'number' => '0xbcb'
                                     },
                       'mstatus' => {
                                      'mask' => '0x88',
                                      'reset' => '0x1800',
                                      'exists' => 'true'
                                    },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'misa' => {
                                   'exists' => 'true',
                                   'reset' => '0x40001104',
                                   'mask' => '0x0'
                                 },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'dicago' => {
                                     'mask' => '0x0',
                                     'exists' => 'true',
                                     'reset' => '0x0',
                                     'comment' => 'Cache diagnostics.',
                                     'number' => '0x7cb',
                                     'debug' => 'true'
                                   },
                       'mvendorid' => {
                                        'mask' => '0x0',
                                        'exists' => 'true',
                                        'reset' => '0x45'
                                      },
                       'mcpc' => {
                                   'exists' => 'true',
                                   'reset' => '0x0',
                                   'mask' => '0x0',
                                   'number' => '0x7c2'
                                 },
                       'mhpmevent4' => {
                                         'exists' => 'true',
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff'
                                       },
                       'mhpmcounter6' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'mhpmcounter5h' => {
                                            'reset' => '0x0',
                                            'exists' => 'true',
                                            'mask' => '0xffffffff'
                                          },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'mie' => {
                                  'reset' => '0x0',
                                  'exists' => 'true',
                                  'mask' => '0x40000888'
                                },
                       'mhpmcounter6h' => {
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0',
                                            'exists' => 'true'
                                          },
                       'dicawics' => {
                                       'debug' => 'true',
                                       'number' => '0x7c8',
                                       'comment' => 'Cache diagnostics.',
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'mask' => '0x0130fffc'
                                     },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter4h' => {
                                            'reset' => '0x0',
                                            'exists' => 'true',
                                            'mask' => '0xffffffff'
                                          },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'mcgc' => {
                                   'number' => '0x7f8',
                                   'reset' => '0x0',
                                   'exists' => 'true',
                                   'mask' => '0x000001ff',
                                   'poke_mask' => '0x000001ff'
                                 },
                       'mip' => {
                                  'exists' => 'true',
                                  'reset' => '0x0',
                                  'mask' => '0x0',
                                  'poke_mask' => '0x40000888'
                                },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'meipt' => {
                                    'number' => '0xbc9',
                                    'comment' => 'External interrupt priority threshold.',
                                    'exists' => 'true',
                                    'reset' => '0x0',
                                    'mask' => '0xf'
                                  },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'marchid' => {
                                      'exists' => 'true',
                                      'reset' => '0x0000000b',
                                      'mask' => '0x0'
                                    },
                       'dicad0' => {
                                     'debug' => 'true',
                                     'number' => '0x7c9',
                                     'mask' => '0xffffffff',
                                     'comment' => 'Cache diagnostics.',
                                     'reset' => '0x0',
                                     'exists' => 'true'
                                   },
                       'mimpid' => {
                                     'reset' => '0x1',
                                     'exists' => 'true',
                                     'mask' => '0x0'
                                   },
                       'dcsr' => {
                                   'exists' => 'true',
                                   'reset' => '0x40000003',
                                   'mask' => '0x00008c04',
                                   'poke_mask' => '0x00008dcc'
                                 }
                     },
            'icache' => {
                          'icache_ic_depth' => 8,
                          'icache_size' => 16,
                          'icache_tag_cell' => 'ram_64x21',
                          'icache_tag_low' => '6',
                          'icache_data_cell' => 'ram_256x34',
                          'icache_ic_rows' => '256',
                          'icache_taddr_high' => 5,
                          'icache_ic_index' => 8,
                          'icache_enable' => '1',
                          'icache_tag_depth' => 64,
                          'icache_tag_high' => 12,
                          'icache_random_placement' => '0'
                        },
            'bus' => {
                       'ifu_bus_tag' => '3',
                       'dma_bus_tag' => '1',
                       'sb_bus_tag' => '1',
                       'lsu_bus_tag' => 4
                     },
            'numiregs' => '32',
            'testbench' => {
                             'clock_period' => '100',
                             'datawidth' => '64',
                             'assert_on' => '',
                             'build_ahb_lite' => '1',
                             'lderr_rollback' => '1',
                             'sterr_rollback' => '0',
                             'TOP' => 'tb_top',
                             'ext_datawidth' => '64',
                             'RV_TOP' => '`TOP.rvtop',
                             'SDVT_AHB' => '1',
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'ext_addrwidth' => '32'
                           },
            'regwidth' => '32',
            'target' => 'default',
            'dccm' => {
                        'lsu_sb_bits' => 16,
                        'dccm_offset' => '0x40000',
                        'dccm_eadr' => '0xf004ffff',
                        'dccm_region' => '0xf',
                        'dccm_size' => 64,
                        'dccm_bits' => 16,
                        'dccm_num_banks' => '8',
                        'dccm_rows' => '2048',
                        'dccm_reserved' => '0x1000',
                        'dccm_index_bits' => 11,
                        'dccm_enable' => '1',
                        'dccm_fdata_width' => 39,
                        'dccm_bank_bits' => 3,
                        'dccm_size_64' => '',
                        'dccm_num_banks_8' => '',
                        'dccm_sadr' => '0xf0040000',
                        'dccm_data_width' => 32,
                        'dccm_data_cell' => 'ram_2048x39',
                        'dccm_byte_width' => '4',
                        'dccm_ecc_width' => 7,
                        'dccm_width_bits' => 2
                      },
            'max_mmode_perf_event' => '50',
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
                            }
                          ],
            'core' => {
                        'dec_instbuf_depth' => '4',
                        'lsu_num_nbload_width' => '3',
                        'dma_buf_depth' => '4',
                        'lsu_stbuf_depth' => '8',
                        'lsu_num_nbload' => '8'
                      },
            'bht' => {
                       'bht_array_depth' => 16,
                       'bht_ghr_size' => 5,
                       'bht_size' => 128,
                       'bht_addr_lo' => '4',
                       'bht_ghr_pad2' => 'fghr[4:3],2\'b0',
                       'bht_hash_string' => '{ghr[3:2] ^ {ghr[3+1], {4-1-2{1\'b0} } },hashin[5:4]^ghr[2-1:0]}',
                       'bht_addr_hi' => 7,
                       'bht_ghr_pad' => 'fghr[4],3\'b0',
                       'bht_ghr_range' => '4:0'
                     }
          );
1;
