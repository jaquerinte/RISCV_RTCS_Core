#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by irodrig on mar dic 10 09:15:21 CET 2019
# 
#  cmd:    swerv -snapshot=default -ahb_lite 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'bus' => {
                       'dma_bus_tag' => '1',
                       'ifu_bus_tag' => '3',
                       'lsu_bus_tag' => 4,
                       'sb_bus_tag' => '1'
                     },
            'harts' => 1,
            'even_odd_trigger_chains' => 'true',
            'target' => 'default',
            'protection' => {
                              'inst_access_addr2' => '0x00000000',
                              'inst_access_mask3' => '0xffffffff',
                              'data_access_mask0' => '0xffffffff',
                              'data_access_addr1' => '0x00000000',
                              'inst_access_addr3' => '0x00000000',
                              'data_access_mask5' => '0xffffffff',
                              'data_access_enable5' => '0x0',
                              'data_access_addr2' => '0x00000000',
                              'inst_access_enable4' => '0x0',
                              'inst_access_addr6' => '0x00000000',
                              'data_access_enable2' => '0x0',
                              'data_access_enable1' => '0x0',
                              'data_access_mask3' => '0xffffffff',
                              'data_access_enable6' => '0x0',
                              'inst_access_enable2' => '0x0',
                              'data_access_addr5' => '0x00000000',
                              'data_access_enable7' => '0x0',
                              'data_access_mask6' => '0xffffffff',
                              'data_access_addr7' => '0x00000000',
                              'inst_access_enable3' => '0x0',
                              'inst_access_enable7' => '0x0',
                              'data_access_addr3' => '0x00000000',
                              'inst_access_enable6' => '0x0',
                              'inst_access_mask7' => '0xffffffff',
                              'inst_access_addr0' => '0x00000000',
                              'data_access_addr4' => '0x00000000',
                              'inst_access_mask5' => '0xffffffff',
                              'data_access_addr6' => '0x00000000',
                              'inst_access_addr4' => '0x00000000',
                              'data_access_enable3' => '0x0',
                              'inst_access_enable0' => '0x0',
                              'inst_access_addr1' => '0x00000000',
                              'inst_access_addr5' => '0x00000000',
                              'data_access_mask2' => '0xffffffff',
                              'inst_access_mask2' => '0xffffffff',
                              'inst_access_mask0' => '0xffffffff',
                              'data_access_mask4' => '0xffffffff',
                              'data_access_mask7' => '0xffffffff',
                              'data_access_mask1' => '0xffffffff',
                              'data_access_addr0' => '0x00000000',
                              'inst_access_addr7' => '0x00000000',
                              'inst_access_enable5' => '0x0',
                              'inst_access_mask6' => '0xffffffff',
                              'data_access_enable4' => '0x0',
                              'data_access_enable0' => '0x0',
                              'inst_access_mask1' => '0xffffffff',
                              'inst_access_mask4' => '0xffffffff',
                              'inst_access_enable1' => '0x0'
                            },
            'bht' => {
                       'bht_ghr_range' => '4:0',
                       'bht_addr_lo' => '4',
                       'bht_hash_string' => '{ghr[3:2] ^ {ghr[3+1], {4-1-2{1\'b0} } },hashin[5:4]^ghr[2-1:0]}',
                       'bht_ghr_size' => 5,
                       'bht_ghr_pad2' => 'fghr[4:3],2\'b0',
                       'bht_addr_hi' => 7,
                       'bht_size' => 128,
                       'bht_array_depth' => 16,
                       'bht_ghr_pad' => 'fghr[4],3\'b0'
                     },
            'dccm' => {
                        'dccm_bits' => 16,
                        'dccm_size_64' => '',
                        'dccm_eadr' => '0xf004ffff',
                        'dccm_ecc_width' => 7,
                        'dccm_offset' => '0x40000',
                        'dccm_data_width' => 32,
                        'dccm_rows' => '2048',
                        'dccm_reserved' => '0x1000',
                        'dccm_byte_width' => '4',
                        'dccm_size' => 64,
                        'lsu_sb_bits' => 16,
                        'dccm_width_bits' => 2,
                        'dccm_bank_bits' => 3,
                        'dccm_num_banks' => '8',
                        'dccm_index_bits' => 11,
                        'dccm_region' => '0xf',
                        'dccm_num_banks_8' => '',
                        'dccm_sadr' => '0xf0040000',
                        'dccm_fdata_width' => 39,
                        'dccm_data_cell' => 'ram_2048x39',
                        'dccm_enable' => '1'
                      },
            'icache' => {
                          'icache_ic_index' => 8,
                          'icache_tag_low' => '6',
                          'icache_ic_depth' => 8,
                          'icache_data_cell' => 'ram_256x34',
                          'icache_ic_rows' => '256',
                          'icache_enable' => '1',
                          'icache_tag_high' => 12,
                          'icache_tag_depth' => 64,
                          'icache_taddr_high' => 5,
                          'icache_tag_cell' => 'ram_64x21',
                          'icache_size' => 16
                        },
            'btb' => {
                       'btb_array_depth' => 4,
                       'btb_index3_hi' => 9,
                       'btb_index1_hi' => 5,
                       'btb_btag_fold' => 1,
                       'btb_size' => 32,
                       'btb_index2_lo' => 6,
                       'btb_btag_size' => 9,
                       'btb_index3_lo' => 8,
                       'btb_addr_hi' => 5,
                       'btb_index1_lo' => '4',
                       'btb_index2_hi' => 7,
                       'btb_addr_lo' => '4'
                     },
            'regwidth' => '32',
            'csr' => {
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'meicpct' => {
                                      'reset' => '0x0',
                                      'comment' => 'External claim id/priority capture.',
                                      'mask' => '0x0',
                                      'exists' => 'true',
                                      'number' => '0xbca'
                                    },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'miccmect' => {
                                       'reset' => '0x0',
                                       'mask' => '0xffffffff',
                                       'exists' => 'true',
                                       'number' => '0x7f1'
                                     },
                       'mhpmcounter6' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'mhpmcounter5h' => {
                                            'mask' => '0xffffffff',
                                            'exists' => 'true',
                                            'reset' => '0x0'
                                          },
                       'mhpmcounter4h' => {
                                            'mask' => '0xffffffff',
                                            'exists' => 'true',
                                            'reset' => '0x0'
                                          },
                       'meicurpl' => {
                                       'comment' => 'External interrupt current priority level.',
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'number' => '0xbcc',
                                       'mask' => '0xf'
                                     },
                       'dmst' => {
                                   'mask' => '0x0',
                                   'exists' => 'true',
                                   'number' => '0x7c4',
                                   'debug' => 'true',
                                   'reset' => '0x0',
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.'
                                 },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'dicago' => {
                                     'mask' => '0x0',
                                     'exists' => 'true',
                                     'number' => '0x7cb',
                                     'reset' => '0x0',
                                     'debug' => 'true',
                                     'comment' => 'Cache diagnostics.'
                                   },
                       'mhpmcounter3h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'mhpmevent3' => {
                                         'exists' => 'true',
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0'
                                       },
                       'mcgc' => {
                                   'number' => '0x7f8',
                                   'poke_mask' => '0x000001ff',
                                   'exists' => 'true',
                                   'mask' => '0x000001ff',
                                   'reset' => '0x0'
                                 },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'mhpmcounter3' => {
                                           'mask' => '0xffffffff',
                                           'exists' => 'true',
                                           'reset' => '0x0'
                                         },
                       'mfdc' => {
                                   'reset' => '0x00070000',
                                   'mask' => '0x000707ff',
                                   'exists' => 'true',
                                   'number' => '0x7f9'
                                 },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'mimpid' => {
                                     'reset' => '0x1',
                                     'mask' => '0x0',
                                     'exists' => 'true'
                                   },
                       'meicidpl' => {
                                       'mask' => '0xf',
                                       'number' => '0xbcb',
                                       'exists' => 'true',
                                       'reset' => '0x0',
                                       'comment' => 'External interrupt claim id priority level.'
                                     },
                       'dicawics' => {
                                       'comment' => 'Cache diagnostics.',
                                       'reset' => '0x0',
                                       'debug' => 'true',
                                       'number' => '0x7c8',
                                       'exists' => 'true',
                                       'mask' => '0x0130fffc'
                                     },
                       'mpmc' => {
                                   'reset' => '0x0',
                                   'comment' => 'Core pause: Implemented as read only.',
                                   'mask' => '0x0',
                                   'number' => '0x7c6',
                                   'exists' => 'true'
                                 },
                       'mip' => {
                                  'poke_mask' => '0x40000888',
                                  'exists' => 'true',
                                  'mask' => '0x0',
                                  'reset' => '0x0'
                                },
                       'misa' => {
                                   'exists' => 'true',
                                   'mask' => '0x0',
                                   'reset' => '0x40001104'
                                 },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'dicad1' => {
                                     'exists' => 'true',
                                     'number' => '0x7ca',
                                     'mask' => '0x3',
                                     'comment' => 'Cache diagnostics.',
                                     'debug' => 'true',
                                     'reset' => '0x0'
                                   },
                       'mie' => {
                                  'reset' => '0x0',
                                  'exists' => 'true',
                                  'mask' => '0x40000888'
                                },
                       'mhpmcounter4' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'mhpmevent6' => {
                                         'reset' => '0x0',
                                         'exists' => 'true',
                                         'mask' => '0xffffffff'
                                       },
                       'meipt' => {
                                    'mask' => '0xf',
                                    'exists' => 'true',
                                    'number' => '0xbc9',
                                    'reset' => '0x0',
                                    'comment' => 'External interrupt priority threshold.'
                                  },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter5' => {
                                           'mask' => '0xffffffff',
                                           'exists' => 'true',
                                           'reset' => '0x0'
                                         },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'mdccmect' => {
                                       'mask' => '0xffffffff',
                                       'number' => '0x7f2',
                                       'exists' => 'true',
                                       'reset' => '0x0'
                                     },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'mhpmevent5' => {
                                         'mask' => '0xffffffff',
                                         'exists' => 'true',
                                         'reset' => '0x0'
                                       },
                       'mcpc' => {
                                   'reset' => '0x0',
                                   'exists' => 'true',
                                   'number' => '0x7c2',
                                   'mask' => '0x0'
                                 },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'micect' => {
                                     'reset' => '0x0',
                                     'mask' => '0xffffffff',
                                     'number' => '0x7f0',
                                     'exists' => 'true'
                                   },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'tselect' => {
                                      'mask' => '0x3',
                                      'exists' => 'true',
                                      'reset' => '0x0'
                                    },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'dcsr' => {
                                   'exists' => 'true',
                                   'poke_mask' => '0x00008dcc',
                                   'mask' => '0x00008c04',
                                   'reset' => '0x40000003'
                                 },
                       'mstatus' => {
                                      'reset' => '0x1800',
                                      'exists' => 'true',
                                      'mask' => '0x88'
                                    },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'marchid' => {
                                      'mask' => '0x0',
                                      'exists' => 'true',
                                      'reset' => '0x0000000b'
                                    },
                       'mhpmcounter6h' => {
                                            'mask' => '0xffffffff',
                                            'exists' => 'true',
                                            'reset' => '0x0'
                                          },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'dicad0' => {
                                     'exists' => 'true',
                                     'number' => '0x7c9',
                                     'mask' => '0xffffffff',
                                     'comment' => 'Cache diagnostics.',
                                     'debug' => 'true',
                                     'reset' => '0x0'
                                   },
                       'mhpmevent4' => {
                                         'mask' => '0xffffffff',
                                         'exists' => 'true',
                                         'reset' => '0x0'
                                       },
                       'mvendorid' => {
                                        'exists' => 'true',
                                        'mask' => '0x0',
                                        'reset' => '0x45'
                                      },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      }
                     },
            'verilator' => '',
            'numiregs' => '32',
            'xlen' => 32,
            'triggers' => [
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
                            }
                          ],
            'physical' => '1',
            'iccm' => {
                        'iccm_offset' => '0xe000000',
                        'iccm_reserved' => '0x1000',
                        'iccm_size' => 512,
                        'iccm_sadr' => '0xee000000',
                        'iccm_bank_bits' => 3,
                        'iccm_eadr' => '0xee07ffff',
                        'iccm_data_cell' => 'ram_16384x39',
                        'iccm_size_512' => '',
                        'iccm_rows' => '16384',
                        'iccm_bits' => 19,
                        'iccm_num_banks_8' => '',
                        'iccm_region' => '0xe',
                        'iccm_index_bits' => 14,
                        'iccm_num_banks' => '8'
                      },
            'nmi_vec' => '0x11110000',
            'tec_rv_icg' => 'clockhdr',
            'max_mmode_perf_event' => '50',
            'core' => {
                        'dec_instbuf_depth' => '4',
                        'lsu_num_nbload' => '8',
                        'lsu_stbuf_depth' => '8',
                        'dma_buf_depth' => '4',
                        'lsu_num_nbload_width' => '3'
                      },
            'pic' => {
                       'pic_meipl_offset' => '0x0000',
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_int_words' => 1,
                       'pic_meip_offset' => '0x1000',
                       'pic_total_int_plus1' => 9,
                       'pic_total_int' => 8,
                       'pic_bits' => 15,
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_offset' => '0xc0000',
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_meie_offset' => '0x2000',
                       'pic_size' => 32,
                       'pic_base_addr' => '0xf00c0000',
                       'pic_meipt_offset' => '0x3004',
                       'pic_region' => '0xf'
                     },
            'testbench' => {
                             'ext_addrwidth' => '32',
                             'lderr_rollback' => '1',
                             'ext_datawidth' => '64',
                             'datawidth' => '64',
                             'RV_TOP' => '`TOP.rvtop',
                             'sterr_rollback' => '0',
                             'SDVT_AHB' => '1',
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'clock_period' => '100',
                             'TOP' => 'tb_top',
                             'build_ahb_lite' => '1',
                             'assert_on' => ''
                           },
            'memmap' => {
                          'debug_sb_mem' => '0xb0580000',
                          'external_data_1' => '0x00000000',
                          'external_data' => '0xc0580000',
                          'external_prog' => '0xb0000000',
                          'serialio' => '0xd0580000'
                        },
            'num_mmode_perf_regs' => '4',
            'retstack' => {
                            'ret_stack_size' => '4'
                          },
            'reset_vec' => '0x80000000'
          );
1;
