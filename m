Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 284B97CB9F
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 20:13:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C2EE385533;
	Wed, 31 Jul 2019 18:13:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B6G-NmHMiMzf; Wed, 31 Jul 2019 18:13:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 80304854B4;
	Wed, 31 Jul 2019 18:13:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D2E2A1BF2EA
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:13:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CECCC857D8
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:13:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9a+dc8ZKTI8W for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 18:13:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2F95785682
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 18:13:04 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 11:13:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,331,1559545200"; 
 d="gz'50?scan'50,208,50";a="180349538"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 31 Jul 2019 11:13:01 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hst5x-00035A-6O; Thu, 01 Aug 2019 02:13:01 +0800
Date: Thu, 1 Aug 2019 02:12:26 +0800
From: kbuild test robot <lkp@intel.com>
To: Saravana Kannan <saravanak@google.com>
Subject: [driver-core:driver-core-testing 9/17] htmldocs:
 include/linux/device.h:1336: warning: Function parameter or member
 'has_edit_links' not described in 'device'
Message-ID: <201908010222.HWFtzyBa%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="qlrl4lba27mwl63d"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kbuild-all@01.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--qlrl4lba27mwl63d
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
head:   90eb808c54acbacfb76b408036dc0fc287b46901
commit: d4d28915bc4a5db5370387e2622b2cb5502d229a [9/17] driver core: Add edit_links() callback for drivers
reproduce: make htmldocs

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   Warning: The Sphinx 'sphinx_rtd_theme' HTML theme was not found. Make sure you have the theme installed to produce pretty HTML output. Falling back to the default theme.
   WARNING: dot(1) not found, for better output quality install graphviz from http://www.graphviz.org
   WARNING: convert(1) not found, for SVG to PDF conversion install ImageMagick (https://www.imagemagick.org)
   include/linux/w1.h:272: warning: Function parameter or member 'of_match_table' not described in 'w1_family'
   include/linux/lsm_hooks.h:1811: warning: Function parameter or member 'quotactl' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1811: warning: Function parameter or member 'quota_on' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1811: warning: Function parameter or member 'sb_free_mnt_opts' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1811: warning: Function parameter or member 'sb_eat_lsm_opts' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1811: warning: Function parameter or member 'sb_kern_mount' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1811: warning: Function parameter or member 'sb_show_options' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1811: warning: Function parameter or member 'sb_add_mnt_opt' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1811: warning: Function parameter or member 'd_instantiate' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1811: warning: Function parameter or member 'getprocattr' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1811: warning: Function parameter or member 'setprocattr' not described in 'security_list_options'
   lib/genalloc.c:1: warning: 'gen_pool_add_virt' not found
   lib/genalloc.c:1: warning: 'gen_pool_alloc' not found
   lib/genalloc.c:1: warning: 'gen_pool_free' not found
   lib/genalloc.c:1: warning: 'gen_pool_alloc_algo' not found
   include/linux/i2c.h:337: warning: Function parameter or member 'init_irq' not described in 'i2c_client'
   fs/direct-io.c:258: warning: Excess function parameter 'offset' description in 'dio_complete'
   fs/libfs.c:496: warning: Excess function parameter 'available' description in 'simple_write_end'
   fs/posix_acl.c:647: warning: Function parameter or member 'inode' not described in 'posix_acl_update_mode'
   fs/posix_acl.c:647: warning: Function parameter or member 'mode_p' not described in 'posix_acl_update_mode'
   fs/posix_acl.c:647: warning: Function parameter or member 'acl' not described in 'posix_acl_update_mode'
   include/linux/regulator/machine.h:196: warning: Function parameter or member 'max_uV_step' not described in 'regulation_constraints'
   include/linux/regulator/driver.h:223: warning: Function parameter or member 'resume' not described in 'regulator_ops'
   include/linux/spi/spi.h:190: warning: Function parameter or member 'driver_override' not described in 'spi_device'
   drivers/usb/typec/bus.c:1: warning: 'typec_altmode_register_driver' not found
   drivers/usb/typec/bus.c:1: warning: 'typec_altmode_unregister_driver' not found
   drivers/usb/typec/class.c:1: warning: 'typec_altmode_register_notifier' not found
   drivers/usb/typec/class.c:1: warning: 'typec_altmode_unregister_notifier' not found
   include/linux/device.h:248: warning: Function parameter or member 'bus' not described in 'bus_find_next_device'
   include/linux/device.h:248: warning: Function parameter or member 'cur' not described in 'bus_find_next_device'
   include/linux/device.h:465: warning: Function parameter or member 'drv' not described in 'driver_find_device_by_name'
   include/linux/device.h:465: warning: Excess function parameter 'driver' description in 'driver_find_device_by_name'
   include/linux/device.h:478: warning: Function parameter or member 'drv' not described in 'driver_find_device_by_of_node'
   include/linux/device.h:478: warning: Excess function parameter 'driver' description in 'driver_find_device_by_of_node'
   include/linux/device.h:491: warning: Function parameter or member 'drv' not described in 'driver_find_device_by_fwnode'
   include/linux/device.h:491: warning: Excess function parameter 'driver' description in 'driver_find_device_by_fwnode'
   include/linux/device.h:503: warning: Function parameter or member 'drv' not described in 'driver_find_device_by_devt'
   include/linux/device.h:503: warning: Excess function parameter 'driver' description in 'driver_find_device_by_devt'
   include/linux/device.h:523: warning: Function parameter or member 'drv' not described in 'driver_find_device_by_acpi_dev'
   include/linux/device.h:523: warning: Excess function parameter 'driver' description in 'driver_find_device_by_acpi_dev'
>> include/linux/device.h:1336: warning: Function parameter or member 'has_edit_links' not described in 'device'
   include/linux/input/sparse-keymap.h:43: warning: Function parameter or member 'sw' not described in 'key_entry'
   include/linux/skbuff.h:893: warning: Function parameter or member 'dev_scratch' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'list' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'ip_defrag_offset' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'skb_mstamp_ns' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member '__cloned_offset' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'head_frag' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member '__pkt_type_offset' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'encapsulation' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'encap_hdr_csum' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'csum_valid' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member '__pkt_vlan_present_offset' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'vlan_present' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'csum_complete_sw' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'csum_level' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'inner_protocol_type' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'remcsum_offload' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'sender_cpu' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'reserved_tailroom' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'inner_ipproto' not described in 'sk_buff'
   include/net/sock.h:233: warning: Function parameter or member 'skc_addrpair' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_portpair' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_ipv6only' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_net_refcnt' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_v6_daddr' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_v6_rcv_saddr' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_cookie' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_listener' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_tw_dr' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_rcv_wnd' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_tw_rcv_nxt' not described in 'sock_common'
   include/net/sock.h:515: warning: Function parameter or member 'sk_rx_skb_cache' not described in 'sock'
   include/net/sock.h:515: warning: Function parameter or member 'sk_wq_raw' not described in 'sock'
   include/net/sock.h:515: warning: Function parameter or member 'tcp_rtx_queue' not described in 'sock'
   include/net/sock.h:515: warning: Function parameter or member 'sk_tx_skb_cache' not described in 'sock'
   include/net/sock.h:515: warning: Function parameter or member 'sk_route_forced_caps' not described in 'sock'
   include/net/sock.h:515: warning: Function parameter or member 'sk_txtime_report_errors' not described in 'sock'
   include/net/sock.h:515: warning: Function parameter or member 'sk_validate_xmit_skb' not described in 'sock'
   include/net/sock.h:515: warning: Function parameter or member 'sk_bpf_storage' not described in 'sock'
   include/net/sock.h:2439: warning: Function parameter or member 'tcp_rx_skb_cache_key' not described in 'DECLARE_STATIC_KEY_FALSE'
   include/net/sock.h:2439: warning: Excess function parameter 'sk' description in 'DECLARE_STATIC_KEY_FALSE'
   include/net/sock.h:2439: warning: Excess function parameter 'skb' description in 'DECLARE_STATIC_KEY_FALSE'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'gso_partial_features' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'l3mdev_ops' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'xfrmdev_ops' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'tlsdev_ops' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'name_assign_type' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'ieee802154_ptr' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'mpls_ptr' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'xdp_prog' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'gro_flush_timeout' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'nf_hooks_ingress' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member '____cacheline_aligned_in_smp' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'qdisc_hash' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'xps_cpus_map' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'xps_rxqs_map' not described in 'net_device'
   include/linux/phylink.h:56: warning: Function parameter or member '__ETHTOOL_DECLARE_LINK_MODE_MASK(advertising' not described in 'phylink_link_state'
   include/linux/phylink.h:56: warning: Function parameter or member '__ETHTOOL_DECLARE_LINK_MODE_MASK(lp_advertising' not described in 'phylink_link_state'
   drivers/net/phy/phylink.c:593: warning: Function parameter or member 'config' not described in 'phylink_create'
   drivers/net/phy/phylink.c:593: warning: Excess function parameter 'ndev' description in 'phylink_create'
   include/net/mac80211.h:2006: warning: Function parameter or member 'txpwr' not described in 'ieee80211_sta'
   include/linux/mod_devicetable.h:822: warning: Function parameter or member 'context' not described in 'wmi_device_id'
   include/linux/device.h:464: warning: Excess function parameter 'driver' description in 'driver_find_device_by_name'
   include/linux/device.h:477: warning: Excess function parameter 'driver' description in 'driver_find_device_by_of_node'
   include/linux/device.h:490: warning: Excess function parameter 'driver' description in 'driver_find_device_by_fwnode'
   include/linux/device.h:502: warning: Excess function parameter 'driver' description in 'driver_find_device_by_devt'
   include/linux/device.h:522: warning: Excess function parameter 'driver' description in 'driver_find_device_by_acpi_dev'
   include/linux/clk.h:381: warning: Function parameter or member 'num_clks' not described in 'devm_clk_bulk_get_optional'
   mm/util.c:1: warning: 'get_user_pages_fast' not found
   mm/slab.c:4215: warning: Function parameter or member 'objp' not described in '__ksize'
   include/net/cfg80211.h:1092: warning: Function parameter or member 'txpwr' not described in 'station_parameters'
   include/net/mac80211.h:4043: warning: Function parameter or member 'sta_set_txpwr' not described in 'ieee80211_ops'
   drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c:142: warning: Function parameter or member 'blockable' not described in 'amdgpu_mn_read_lock'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:347: warning: cannot understand function prototype: 'struct amdgpu_vm_pt_cursor '
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:348: warning: cannot understand function prototype: 'struct amdgpu_vm_pt_cursor '
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:494: warning: Function parameter or member 'start' not described in 'amdgpu_vm_pt_first_dfs'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:546: warning: Function parameter or member 'adev' not described in 'for_each_amdgpu_vm_pt_dfs_safe'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:546: warning: Function parameter or member 'vm' not described in 'for_each_amdgpu_vm_pt_dfs_safe'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:546: warning: Function parameter or member 'start' not described in 'for_each_amdgpu_vm_pt_dfs_safe'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:546: warning: Function parameter or member 'cursor' not described in 'for_each_amdgpu_vm_pt_dfs_safe'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:546: warning: Function parameter or member 'entry' not described in 'for_each_amdgpu_vm_pt_dfs_safe'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:823: warning: Function parameter or member 'level' not described in 'amdgpu_vm_bo_param'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1285: warning: Function parameter or member 'params' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1285: warning: Function parameter or member 'bo' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1285: warning: Function parameter or member 'level' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1285: warning: Function parameter or member 'pe' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1285: warning: Function parameter or member 'addr' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1285: warning: Function parameter or member 'count' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1285: warning: Function parameter or member 'incr' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1285: warning: Function parameter or member 'flags' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:2822: warning: Function parameter or member 'pasid' not described in 'amdgpu_vm_make_compute'
   drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c:378: warning: Excess function parameter 'entry' description in 'amdgpu_irq_dispatch'
   drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c:379: warning: Function parameter or member 'ih' not described in 'amdgpu_irq_dispatch'
   drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c:379: warning: Excess function parameter 'entry' description in 'amdgpu_irq_dispatch'
   drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c:1: warning: no structured comments found
   drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c:1: warning: no structured comments found
   drivers/gpu/drm/amd/amdgpu/amdgpu_pm.c:1: warning: 'pp_dpm_sclk pp_dpm_mclk pp_dpm_pcie' not found
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:131: warning: Incorrect use of kernel-doc format:          * @atomic_obj
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:237: warning: Incorrect use of kernel-doc format:          * gpu_info FW provided soc bounding box struct or 0 if not
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:242: warning: Function parameter or member 'atomic_obj' not described in 'amdgpu_display_manager'

vim +1336 include/linux/device.h

^1da177e4c3f415 Linus Torvalds         2005-04-16 @1336  
a4232963757e62b Lars-Peter Clausen     2012-07-03  1337  static inline struct device *kobj_to_dev(struct kobject *kobj)
a4232963757e62b Lars-Peter Clausen     2012-07-03  1338  {
a4232963757e62b Lars-Peter Clausen     2012-07-03  1339  	return container_of(kobj, struct device, kobj);
a4232963757e62b Lars-Peter Clausen     2012-07-03  1340  }
a4232963757e62b Lars-Peter Clausen     2012-07-03  1341  
dbba197edf32209 Joerg Roedel           2018-11-30  1342  /**
dbba197edf32209 Joerg Roedel           2018-11-30  1343   * device_iommu_mapped - Returns true when the device DMA is translated
dbba197edf32209 Joerg Roedel           2018-11-30  1344   *			 by an IOMMU
dbba197edf32209 Joerg Roedel           2018-11-30  1345   * @dev: Device to perform the check on
dbba197edf32209 Joerg Roedel           2018-11-30  1346   */
dbba197edf32209 Joerg Roedel           2018-11-30  1347  static inline bool device_iommu_mapped(struct device *dev)
dbba197edf32209 Joerg Roedel           2018-11-30  1348  {
dbba197edf32209 Joerg Roedel           2018-11-30  1349  	return (dev->iommu_group != NULL);
dbba197edf32209 Joerg Roedel           2018-11-30  1350  }
dbba197edf32209 Joerg Roedel           2018-11-30  1351  
9a3df1f7de0ecaf Alan Stern             2008-03-19  1352  /* Get the wakeup routines, which depend on struct device */
9a3df1f7de0ecaf Alan Stern             2008-03-19  1353  #include <linux/pm_wakeup.h>
9a3df1f7de0ecaf Alan Stern             2008-03-19  1354  
bf9ca69fc8d19d4 Jean Delvare           2008-07-30  1355  static inline const char *dev_name(const struct device *dev)
06916639e2fed9e Kay Sievers            2008-05-02  1356  {
a636ee7fb35b731 Paul Mundt             2010-03-09  1357  	/* Use the init name until the kobject becomes available */
a636ee7fb35b731 Paul Mundt             2010-03-09  1358  	if (dev->init_name)
a636ee7fb35b731 Paul Mundt             2010-03-09  1359  		return dev->init_name;
a636ee7fb35b731 Paul Mundt             2010-03-09  1360  
1fa5ae857bb14f6 Kay Sievers            2009-01-25  1361  	return kobject_name(&dev->kobj);
06916639e2fed9e Kay Sievers            2008-05-02  1362  }
06916639e2fed9e Kay Sievers            2008-05-02  1363  
b9075fa968a0a43 Joe Perches            2011-10-31  1364  extern __printf(2, 3)
b9075fa968a0a43 Joe Perches            2011-10-31  1365  int dev_set_name(struct device *dev, const char *name, ...);
413c239fad68258 Stephen Rothwell       2008-05-30  1366  
873481367edb18a Christoph Hellwig      2006-12-06  1367  #ifdef CONFIG_NUMA
873481367edb18a Christoph Hellwig      2006-12-06  1368  static inline int dev_to_node(struct device *dev)
873481367edb18a Christoph Hellwig      2006-12-06  1369  {
873481367edb18a Christoph Hellwig      2006-12-06  1370  	return dev->numa_node;
873481367edb18a Christoph Hellwig      2006-12-06  1371  }
873481367edb18a Christoph Hellwig      2006-12-06  1372  static inline void set_dev_node(struct device *dev, int node)
873481367edb18a Christoph Hellwig      2006-12-06  1373  {
873481367edb18a Christoph Hellwig      2006-12-06  1374  	dev->numa_node = node;
873481367edb18a Christoph Hellwig      2006-12-06  1375  }
873481367edb18a Christoph Hellwig      2006-12-06  1376  #else
873481367edb18a Christoph Hellwig      2006-12-06  1377  static inline int dev_to_node(struct device *dev)
873481367edb18a Christoph Hellwig      2006-12-06  1378  {
98fa15f34cb3798 Anshuman Khandual      2019-03-05  1379  	return NUMA_NO_NODE;
873481367edb18a Christoph Hellwig      2006-12-06  1380  }
873481367edb18a Christoph Hellwig      2006-12-06  1381  static inline void set_dev_node(struct device *dev, int node)
873481367edb18a Christoph Hellwig      2006-12-06  1382  {
873481367edb18a Christoph Hellwig      2006-12-06  1383  }
873481367edb18a Christoph Hellwig      2006-12-06  1384  #endif
873481367edb18a Christoph Hellwig      2006-12-06  1385  
f1421db8ca4c110 Marc Zyngier           2015-07-28  1386  static inline struct irq_domain *dev_get_msi_domain(const struct device *dev)
f1421db8ca4c110 Marc Zyngier           2015-07-28  1387  {
f1421db8ca4c110 Marc Zyngier           2015-07-28  1388  #ifdef CONFIG_GENERIC_MSI_IRQ_DOMAIN
f1421db8ca4c110 Marc Zyngier           2015-07-28  1389  	return dev->msi_domain;
f1421db8ca4c110 Marc Zyngier           2015-07-28  1390  #else
f1421db8ca4c110 Marc Zyngier           2015-07-28  1391  	return NULL;
f1421db8ca4c110 Marc Zyngier           2015-07-28  1392  #endif
f1421db8ca4c110 Marc Zyngier           2015-07-28  1393  }
f1421db8ca4c110 Marc Zyngier           2015-07-28  1394  
f1421db8ca4c110 Marc Zyngier           2015-07-28  1395  static inline void dev_set_msi_domain(struct device *dev, struct irq_domain *d)
f1421db8ca4c110 Marc Zyngier           2015-07-28  1396  {
f1421db8ca4c110 Marc Zyngier           2015-07-28  1397  #ifdef CONFIG_GENERIC_MSI_IRQ_DOMAIN
f1421db8ca4c110 Marc Zyngier           2015-07-28  1398  	dev->msi_domain = d;
f1421db8ca4c110 Marc Zyngier           2015-07-28  1399  #endif
f1421db8ca4c110 Marc Zyngier           2015-07-28  1400  }
f1421db8ca4c110 Marc Zyngier           2015-07-28  1401  
a996d010b648788 Jean Delvare           2014-04-14  1402  static inline void *dev_get_drvdata(const struct device *dev)
a996d010b648788 Jean Delvare           2014-04-14  1403  {
a996d010b648788 Jean Delvare           2014-04-14  1404  	return dev->driver_data;
a996d010b648788 Jean Delvare           2014-04-14  1405  }
a996d010b648788 Jean Delvare           2014-04-14  1406  
a996d010b648788 Jean Delvare           2014-04-14  1407  static inline void dev_set_drvdata(struct device *dev, void *data)
a996d010b648788 Jean Delvare           2014-04-14  1408  {
a996d010b648788 Jean Delvare           2014-04-14  1409  	dev->driver_data = data;
a996d010b648788 Jean Delvare           2014-04-14  1410  }
a996d010b648788 Jean Delvare           2014-04-14  1411  
5c095a0e0d600d5 Rafael J. Wysocki      2011-08-25  1412  static inline struct pm_subsys_data *dev_to_psd(struct device *dev)
5c095a0e0d600d5 Rafael J. Wysocki      2011-08-25  1413  {
5c095a0e0d600d5 Rafael J. Wysocki      2011-08-25  1414  	return dev ? dev->power.subsys_data : NULL;
5c095a0e0d600d5 Rafael J. Wysocki      2011-08-25  1415  }
5c095a0e0d600d5 Rafael J. Wysocki      2011-08-25  1416  
f67f129e519fa87 Ming Lei               2009-03-01  1417  static inline unsigned int dev_get_uevent_suppress(const struct device *dev)
f67f129e519fa87 Ming Lei               2009-03-01  1418  {
f67f129e519fa87 Ming Lei               2009-03-01  1419  	return dev->kobj.uevent_suppress;
f67f129e519fa87 Ming Lei               2009-03-01  1420  }
f67f129e519fa87 Ming Lei               2009-03-01  1421  
f67f129e519fa87 Ming Lei               2009-03-01  1422  static inline void dev_set_uevent_suppress(struct device *dev, int val)
f67f129e519fa87 Ming Lei               2009-03-01  1423  {
f67f129e519fa87 Ming Lei               2009-03-01  1424  	dev->kobj.uevent_suppress = val;
f67f129e519fa87 Ming Lei               2009-03-01  1425  }
f67f129e519fa87 Ming Lei               2009-03-01  1426  
d305ef5d2a4e77b Daniel Ritz            2005-09-22  1427  static inline int device_is_registered(struct device *dev)
d305ef5d2a4e77b Daniel Ritz            2005-09-22  1428  {
3f62e5700b2a679 Greg Kroah-Hartman     2008-03-13  1429  	return dev->kobj.state_in_sysfs;
d305ef5d2a4e77b Daniel Ritz            2005-09-22  1430  }
d305ef5d2a4e77b Daniel Ritz            2005-09-22  1431  
5af84b82701a96b Rafael J. Wysocki      2010-01-23  1432  static inline void device_enable_async_suspend(struct device *dev)
5af84b82701a96b Rafael J. Wysocki      2010-01-23  1433  {
f76b168b6f117a4 Alan Stern             2011-06-18  1434  	if (!dev->power.is_prepared)
5af84b82701a96b Rafael J. Wysocki      2010-01-23  1435  		dev->power.async_suspend = true;
5af84b82701a96b Rafael J. Wysocki      2010-01-23  1436  }
5af84b82701a96b Rafael J. Wysocki      2010-01-23  1437  
5a2eb8585f3b38e Rafael J. Wysocki      2010-01-23  1438  static inline void device_disable_async_suspend(struct device *dev)
5a2eb8585f3b38e Rafael J. Wysocki      2010-01-23  1439  {
f76b168b6f117a4 Alan Stern             2011-06-18  1440  	if (!dev->power.is_prepared)
5a2eb8585f3b38e Rafael J. Wysocki      2010-01-23  1441  		dev->power.async_suspend = false;
5a2eb8585f3b38e Rafael J. Wysocki      2010-01-23  1442  }
5a2eb8585f3b38e Rafael J. Wysocki      2010-01-23  1443  
5a2eb8585f3b38e Rafael J. Wysocki      2010-01-23  1444  static inline bool device_async_suspend_enabled(struct device *dev)
5a2eb8585f3b38e Rafael J. Wysocki      2010-01-23  1445  {
5a2eb8585f3b38e Rafael J. Wysocki      2010-01-23  1446  	return !!dev->power.async_suspend;
5a2eb8585f3b38e Rafael J. Wysocki      2010-01-23  1447  }
5a2eb8585f3b38e Rafael J. Wysocki      2010-01-23  1448  
85945c28b5a8880 Sudeep Holla           2019-02-14  1449  static inline bool device_pm_not_required(struct device *dev)
85945c28b5a8880 Sudeep Holla           2019-02-14  1450  {
85945c28b5a8880 Sudeep Holla           2019-02-14  1451  	return dev->power.no_pm;
85945c28b5a8880 Sudeep Holla           2019-02-14  1452  }
85945c28b5a8880 Sudeep Holla           2019-02-14  1453  
85945c28b5a8880 Sudeep Holla           2019-02-14  1454  static inline void device_set_pm_not_required(struct device *dev)
85945c28b5a8880 Sudeep Holla           2019-02-14  1455  {
85945c28b5a8880 Sudeep Holla           2019-02-14  1456  	dev->power.no_pm = true;
85945c28b5a8880 Sudeep Holla           2019-02-14  1457  }
85945c28b5a8880 Sudeep Holla           2019-02-14  1458  
feb70af0e3ac681 Rafael J. Wysocki      2012-08-13  1459  static inline void dev_pm_syscore_device(struct device *dev, bool val)
feb70af0e3ac681 Rafael J. Wysocki      2012-08-13  1460  {
feb70af0e3ac681 Rafael J. Wysocki      2012-08-13  1461  #ifdef CONFIG_PM_SLEEP
feb70af0e3ac681 Rafael J. Wysocki      2012-08-13  1462  	dev->power.syscore = val;
feb70af0e3ac681 Rafael J. Wysocki      2012-08-13  1463  #endif
feb70af0e3ac681 Rafael J. Wysocki      2012-08-13  1464  }
feb70af0e3ac681 Rafael J. Wysocki      2012-08-13  1465  
08810a4119aaebf Rafael J. Wysocki      2017-10-25  1466  static inline void dev_pm_set_driver_flags(struct device *dev, u32 flags)
08810a4119aaebf Rafael J. Wysocki      2017-10-25  1467  {
08810a4119aaebf Rafael J. Wysocki      2017-10-25  1468  	dev->power.driver_flags = flags;
08810a4119aaebf Rafael J. Wysocki      2017-10-25  1469  }
08810a4119aaebf Rafael J. Wysocki      2017-10-25  1470  
08810a4119aaebf Rafael J. Wysocki      2017-10-25  1471  static inline bool dev_pm_test_driver_flags(struct device *dev, u32 flags)
08810a4119aaebf Rafael J. Wysocki      2017-10-25  1472  {
08810a4119aaebf Rafael J. Wysocki      2017-10-25  1473  	return !!(dev->power.driver_flags & flags);
08810a4119aaebf Rafael J. Wysocki      2017-10-25  1474  }
08810a4119aaebf Rafael J. Wysocki      2017-10-25  1475  
8e9394ce2412254 Greg Kroah-Hartman     2010-02-17  1476  static inline void device_lock(struct device *dev)
8e9394ce2412254 Greg Kroah-Hartman     2010-02-17  1477  {
3142788b7967ccf Thomas Gleixner        2010-01-29  1478  	mutex_lock(&dev->mutex);
8e9394ce2412254 Greg Kroah-Hartman     2010-02-17  1479  }
8e9394ce2412254 Greg Kroah-Hartman     2010-02-17  1480  
7dd9cba5bb90ffa Oliver Neukum          2016-01-21  1481  static inline int device_lock_interruptible(struct device *dev)
7dd9cba5bb90ffa Oliver Neukum          2016-01-21  1482  {
7dd9cba5bb90ffa Oliver Neukum          2016-01-21  1483  	return mutex_lock_interruptible(&dev->mutex);
7dd9cba5bb90ffa Oliver Neukum          2016-01-21  1484  }
7dd9cba5bb90ffa Oliver Neukum          2016-01-21  1485  
8e9394ce2412254 Greg Kroah-Hartman     2010-02-17  1486  static inline int device_trylock(struct device *dev)
8e9394ce2412254 Greg Kroah-Hartman     2010-02-17  1487  {
3142788b7967ccf Thomas Gleixner        2010-01-29  1488  	return mutex_trylock(&dev->mutex);
8e9394ce2412254 Greg Kroah-Hartman     2010-02-17  1489  }
8e9394ce2412254 Greg Kroah-Hartman     2010-02-17  1490  
8e9394ce2412254 Greg Kroah-Hartman     2010-02-17  1491  static inline void device_unlock(struct device *dev)
8e9394ce2412254 Greg Kroah-Hartman     2010-02-17  1492  {
3142788b7967ccf Thomas Gleixner        2010-01-29  1493  	mutex_unlock(&dev->mutex);
8e9394ce2412254 Greg Kroah-Hartman     2010-02-17  1494  }
8e9394ce2412254 Greg Kroah-Hartman     2010-02-17  1495  
ac8010221d3fa86 Konrad Rzeszutek Wilk  2014-12-03  1496  static inline void device_lock_assert(struct device *dev)
ac8010221d3fa86 Konrad Rzeszutek Wilk  2014-12-03  1497  {
ac8010221d3fa86 Konrad Rzeszutek Wilk  2014-12-03  1498  	lockdep_assert_held(&dev->mutex);
ac8010221d3fa86 Konrad Rzeszutek Wilk  2014-12-03  1499  }
ac8010221d3fa86 Konrad Rzeszutek Wilk  2014-12-03  1500  
e8a51e1b51ee573 Benjamin Herrenschmidt 2015-02-17  1501  static inline struct device_node *dev_of_node(struct device *dev)
e8a51e1b51ee573 Benjamin Herrenschmidt 2015-02-17  1502  {
1b833924e5b3cea Stephen Boyd           2019-04-12  1503  	if (!IS_ENABLED(CONFIG_OF) || !dev)
e8a51e1b51ee573 Benjamin Herrenschmidt 2015-02-17  1504  		return NULL;
e8a51e1b51ee573 Benjamin Herrenschmidt 2015-02-17  1505  	return dev->of_node;
e8a51e1b51ee573 Benjamin Herrenschmidt 2015-02-17  1506  }
e8a51e1b51ee573 Benjamin Herrenschmidt 2015-02-17  1507  
1f21782e63da81f Adrian Bunk            2006-12-19  1508  void driver_init(void);
1f21782e63da81f Adrian Bunk            2006-12-19  1509  
^1da177e4c3f415 Linus Torvalds         2005-04-16  1510  /*
^1da177e4c3f415 Linus Torvalds         2005-04-16  1511   * High level routines for use by the bus drivers
^1da177e4c3f415 Linus Torvalds         2005-04-16  1512   */
4a7fb6363f2d1a6 Andrew Morton          2006-08-14  1513  extern int __must_check device_register(struct device *dev);
^1da177e4c3f415 Linus Torvalds         2005-04-16  1514  extern void device_unregister(struct device *dev);
^1da177e4c3f415 Linus Torvalds         2005-04-16  1515  extern void device_initialize(struct device *dev);
4a7fb6363f2d1a6 Andrew Morton          2006-08-14  1516  extern int __must_check device_add(struct device *dev);
^1da177e4c3f415 Linus Torvalds         2005-04-16  1517  extern void device_del(struct device *dev);
d462943afee8bff Greg Kroah-Hartman     2008-01-24  1518  extern int device_for_each_child(struct device *dev, void *data,
d462943afee8bff Greg Kroah-Hartman     2008-01-24  1519  		     int (*fn)(struct device *dev, void *data));
3d060aeb72113cd Andy Shevchenko        2015-07-27  1520  extern int device_for_each_child_reverse(struct device *dev, void *data,
3d060aeb72113cd Andy Shevchenko        2015-07-27  1521  		     int (*fn)(struct device *dev, void *data));
d462943afee8bff Greg Kroah-Hartman     2008-01-24  1522  extern struct device *device_find_child(struct device *dev, void *data,
d462943afee8bff Greg Kroah-Hartman     2008-01-24  1523  				int (*match)(struct device *dev, void *data));
dad9bb017865ae7 Heikki Krogerus        2019-05-31  1524  extern struct device *device_find_child_by_name(struct device *parent,
dad9bb017865ae7 Heikki Krogerus        2019-05-31  1525  						const char *name);
6937e8f8c0135f2 Johannes Berg          2010-08-05  1526  extern int device_rename(struct device *dev, const char *new_name);
ffa6a7054d172a2 Cornelia Huck          2009-03-04  1527  extern int device_move(struct device *dev, struct device *new_parent,
ffa6a7054d172a2 Cornelia Huck          2009-03-04  1528  		       enum dpm_order dpm_order);
e454cea20bdcff1 Kay Sievers            2009-09-18  1529  extern const char *device_get_devnode(struct device *dev,
4e4098a3e08783c Greg Kroah-Hartman     2013-04-11  1530  				      umode_t *mode, kuid_t *uid, kgid_t *gid,
3c2670e6515cf58 Kay Sievers            2013-04-06  1531  				      const char **tmp);
^1da177e4c3f415 Linus Torvalds         2005-04-16  1532  
4f3549d72d1b5c9 Rafael J. Wysocki      2013-05-02  1533  static inline bool device_supports_offline(struct device *dev)
4f3549d72d1b5c9 Rafael J. Wysocki      2013-05-02  1534  {
4f3549d72d1b5c9 Rafael J. Wysocki      2013-05-02  1535  	return dev->bus && dev->bus->offline && dev->bus->online;
4f3549d72d1b5c9 Rafael J. Wysocki      2013-05-02  1536  }
4f3549d72d1b5c9 Rafael J. Wysocki      2013-05-02  1537  
4f3549d72d1b5c9 Rafael J. Wysocki      2013-05-02  1538  extern void lock_device_hotplug(void);
4f3549d72d1b5c9 Rafael J. Wysocki      2013-05-02  1539  extern void unlock_device_hotplug(void);
5e33bc4165f3edd Rafael J. Wysocki      2013-08-28  1540  extern int lock_device_hotplug_sysfs(void);
4f3549d72d1b5c9 Rafael J. Wysocki      2013-05-02  1541  extern int device_offline(struct device *dev);
4f3549d72d1b5c9 Rafael J. Wysocki      2013-05-02  1542  extern int device_online(struct device *dev);
97badf873ab60e8 Rafael J. Wysocki      2015-04-03  1543  extern void set_primary_fwnode(struct device *dev, struct fwnode_handle *fwnode);
97badf873ab60e8 Rafael J. Wysocki      2015-04-03  1544  extern void set_secondary_fwnode(struct device *dev, struct fwnode_handle *fwnode);
4e75e1d7dac9d7c Johan Hovold           2017-06-06  1545  void device_set_of_node_from_dev(struct device *dev, const struct device *dev2);
97badf873ab60e8 Rafael J. Wysocki      2015-04-03  1546  
9af15c38254d81c Phil Sutter            2017-01-18  1547  static inline int dev_num_vf(struct device *dev)
9af15c38254d81c Phil Sutter            2017-01-18  1548  {
9af15c38254d81c Phil Sutter            2017-01-18  1549  	if (dev->bus && dev->bus->num_vf)
9af15c38254d81c Phil Sutter            2017-01-18  1550  		return dev->bus->num_vf(dev);
9af15c38254d81c Phil Sutter            2017-01-18  1551  	return 0;
9af15c38254d81c Phil Sutter            2017-01-18  1552  }
9af15c38254d81c Phil Sutter            2017-01-18  1553  
^1da177e4c3f415 Linus Torvalds         2005-04-16  1554  /*
0aa0dc41bfd9934 Mark McLoughlin        2008-12-15  1555   * Root device objects for grouping under /sys/devices
0aa0dc41bfd9934 Mark McLoughlin        2008-12-15  1556   */
0aa0dc41bfd9934 Mark McLoughlin        2008-12-15  1557  extern struct device *__root_device_register(const char *name,
0aa0dc41bfd9934 Mark McLoughlin        2008-12-15  1558  					     struct module *owner);
eb5589a8f0dab7e Paul Gortmaker         2011-05-27  1559  
33ac1257ff0dee2 Tejun Heo              2014-01-10  1560  /* This is a macro to avoid include problems with THIS_MODULE */
eb5589a8f0dab7e Paul Gortmaker         2011-05-27  1561  #define root_device_register(name) \
eb5589a8f0dab7e Paul Gortmaker         2011-05-27  1562  	__root_device_register(name, THIS_MODULE)
eb5589a8f0dab7e Paul Gortmaker         2011-05-27  1563  
0aa0dc41bfd9934 Mark McLoughlin        2008-12-15  1564  extern void root_device_unregister(struct device *root);
0aa0dc41bfd9934 Mark McLoughlin        2008-12-15  1565  
a5b8b1ada6dd765 Mark Brown             2009-07-17  1566  static inline void *dev_get_platdata(const struct device *dev)
a5b8b1ada6dd765 Mark Brown             2009-07-17  1567  {
a5b8b1ada6dd765 Mark Brown             2009-07-17  1568  	return dev->platform_data;
a5b8b1ada6dd765 Mark Brown             2009-07-17  1569  }
a5b8b1ada6dd765 Mark Brown             2009-07-17  1570  
0aa0dc41bfd9934 Mark McLoughlin        2008-12-15  1571  /*
^1da177e4c3f415 Linus Torvalds         2005-04-16  1572   * Manual binding of a device to driver. See drivers/base/bus.c
^1da177e4c3f415 Linus Torvalds         2005-04-16  1573   * for information on use.
^1da177e4c3f415 Linus Torvalds         2005-04-16  1574   */
f86db396ff455ed Andrew Morton          2006-08-14  1575  extern int __must_check device_bind_driver(struct device *dev);
^1da177e4c3f415 Linus Torvalds         2005-04-16  1576  extern void device_release_driver(struct device *dev);
4a7fb6363f2d1a6 Andrew Morton          2006-08-14  1577  extern int  __must_check device_attach(struct device *dev);
f86db396ff455ed Andrew Morton          2006-08-14  1578  extern int __must_check driver_attach(struct device_driver *drv);
765230b5f084863 Dmitry Torokhov        2015-03-30  1579  extern void device_initial_probe(struct device *dev);
f86db396ff455ed Andrew Morton          2006-08-14  1580  extern int __must_check device_reprobe(struct device *dev);
d4d28915bc4a5db Saravana Kannan        2019-07-29  1581  extern int driver_edit_links(struct device *dev);
^1da177e4c3f415 Linus Torvalds         2005-04-16  1582  
6b9cb42752dafba Tomeu Vizoso           2016-01-07  1583  extern bool device_is_bound(struct device *dev);
6b9cb42752dafba Tomeu Vizoso           2016-01-07  1584  
23681e479129854 Greg Kroah-Hartman     2006-06-14  1585  /*
23681e479129854 Greg Kroah-Hartman     2006-06-14  1586   * Easy functions for dynamically creating devices on the fly
23681e479129854 Greg Kroah-Hartman     2006-06-14  1587   */
8db1486065141e6 Nicolas Iooss          2015-07-17  1588  extern __printf(5, 0)
8db1486065141e6 Nicolas Iooss          2015-07-17  1589  struct device *device_create_vargs(struct class *cls, struct device *parent,
8db1486065141e6 Nicolas Iooss          2015-07-17  1590  				   dev_t devt, void *drvdata,
8db1486065141e6 Nicolas Iooss          2015-07-17  1591  				   const char *fmt, va_list vargs);
b9075fa968a0a43 Joe Perches            2011-10-31  1592  extern __printf(5, 6)
b9075fa968a0a43 Joe Perches            2011-10-31  1593  struct device *device_create(struct class *cls, struct device *parent,
4e10673944a5c38 Greg Kroah-Hartman     2008-07-21  1594  			     dev_t devt, void *drvdata,
b9075fa968a0a43 Joe Perches            2011-10-31  1595  			     const char *fmt, ...);
39ef311204941dd Guenter Roeck          2013-07-14  1596  extern __printf(6, 7)
39ef311204941dd Guenter Roeck          2013-07-14  1597  struct device *device_create_with_groups(struct class *cls,
39ef311204941dd Guenter Roeck          2013-07-14  1598  			     struct device *parent, dev_t devt, void *drvdata,
39ef311204941dd Guenter Roeck          2013-07-14  1599  			     const struct attribute_group **groups,
39ef311204941dd Guenter Roeck          2013-07-14  1600  			     const char *fmt, ...);
23681e479129854 Greg Kroah-Hartman     2006-06-14  1601  extern void device_destroy(struct class *cls, dev_t devt);
^1da177e4c3f415 Linus Torvalds         2005-04-16  1602  
a7670d425b75f9e Dmitry Torokhov        2017-07-19  1603  extern int __must_check device_add_groups(struct device *dev,
a7670d425b75f9e Dmitry Torokhov        2017-07-19  1604  					const struct attribute_group **groups);
a7670d425b75f9e Dmitry Torokhov        2017-07-19  1605  extern void device_remove_groups(struct device *dev,
a7670d425b75f9e Dmitry Torokhov        2017-07-19  1606  				 const struct attribute_group **groups);
a7670d425b75f9e Dmitry Torokhov        2017-07-19  1607  
e323b2dddc1ce7e Dmitry Torokhov        2017-07-19  1608  static inline int __must_check device_add_group(struct device *dev,
e323b2dddc1ce7e Dmitry Torokhov        2017-07-19  1609  					const struct attribute_group *grp)
e323b2dddc1ce7e Dmitry Torokhov        2017-07-19  1610  {
e323b2dddc1ce7e Dmitry Torokhov        2017-07-19  1611  	const struct attribute_group *groups[] = { grp, NULL };
e323b2dddc1ce7e Dmitry Torokhov        2017-07-19  1612  
e323b2dddc1ce7e Dmitry Torokhov        2017-07-19  1613  	return device_add_groups(dev, groups);
e323b2dddc1ce7e Dmitry Torokhov        2017-07-19  1614  }
e323b2dddc1ce7e Dmitry Torokhov        2017-07-19  1615  
e323b2dddc1ce7e Dmitry Torokhov        2017-07-19  1616  static inline void device_remove_group(struct device *dev,
e323b2dddc1ce7e Dmitry Torokhov        2017-07-19  1617  				       const struct attribute_group *grp)
e323b2dddc1ce7e Dmitry Torokhov        2017-07-19  1618  {
e323b2dddc1ce7e Dmitry Torokhov        2017-07-19  1619  	const struct attribute_group *groups[] = { grp, NULL };
e323b2dddc1ce7e Dmitry Torokhov        2017-07-19  1620  
e323b2dddc1ce7e Dmitry Torokhov        2017-07-19  1621  	return device_remove_groups(dev, groups);
e323b2dddc1ce7e Dmitry Torokhov        2017-07-19  1622  }
e323b2dddc1ce7e Dmitry Torokhov        2017-07-19  1623  
57b8ff070f9897b Dmitry Torokhov        2017-07-19  1624  extern int __must_check devm_device_add_groups(struct device *dev,
57b8ff070f9897b Dmitry Torokhov        2017-07-19  1625  					const struct attribute_group **groups);
57b8ff070f9897b Dmitry Torokhov        2017-07-19  1626  extern void devm_device_remove_groups(struct device *dev,
57b8ff070f9897b Dmitry Torokhov        2017-07-19  1627  				      const struct attribute_group **groups);
57b8ff070f9897b Dmitry Torokhov        2017-07-19  1628  extern int __must_check devm_device_add_group(struct device *dev,
57b8ff070f9897b Dmitry Torokhov        2017-07-19  1629  					const struct attribute_group *grp);
57b8ff070f9897b Dmitry Torokhov        2017-07-19  1630  extern void devm_device_remove_group(struct device *dev,
57b8ff070f9897b Dmitry Torokhov        2017-07-19  1631  				     const struct attribute_group *grp);
57b8ff070f9897b Dmitry Torokhov        2017-07-19  1632  
^1da177e4c3f415 Linus Torvalds         2005-04-16  1633  /*
^1da177e4c3f415 Linus Torvalds         2005-04-16  1634   * Platform "fixup" functions - allow the platform to have their say
^1da177e4c3f415 Linus Torvalds         2005-04-16  1635   * about devices and actions that the general device layer doesn't
^1da177e4c3f415 Linus Torvalds         2005-04-16  1636   * know about.
^1da177e4c3f415 Linus Torvalds         2005-04-16  1637   */
^1da177e4c3f415 Linus Torvalds         2005-04-16  1638  /* Notify platform of device discovery */
^1da177e4c3f415 Linus Torvalds         2005-04-16  1639  extern int (*platform_notify)(struct device *dev);
^1da177e4c3f415 Linus Torvalds         2005-04-16  1640  
^1da177e4c3f415 Linus Torvalds         2005-04-16  1641  extern int (*platform_notify_remove)(struct device *dev);
^1da177e4c3f415 Linus Torvalds         2005-04-16  1642  
^1da177e4c3f415 Linus Torvalds         2005-04-16  1643  
880ffb5c6c5c8c8 Wanlong Gao            2011-05-05  1644  /*
^1da177e4c3f415 Linus Torvalds         2005-04-16  1645   * get_device - atomically increment the reference count for the device.
^1da177e4c3f415 Linus Torvalds         2005-04-16  1646   *
^1da177e4c3f415 Linus Torvalds         2005-04-16  1647   */
^1da177e4c3f415 Linus Torvalds         2005-04-16  1648  extern struct device *get_device(struct device *dev);
^1da177e4c3f415 Linus Torvalds         2005-04-16  1649  extern void put_device(struct device *dev);
^1da177e4c3f415 Linus Torvalds         2005-04-16  1650  
2b2af54a5bb6f7e Kay Sievers            2009-04-30  1651  #ifdef CONFIG_DEVTMPFS
2b2af54a5bb6f7e Kay Sievers            2009-04-30  1652  extern int devtmpfs_create_node(struct device *dev);
2b2af54a5bb6f7e Kay Sievers            2009-04-30  1653  extern int devtmpfs_delete_node(struct device *dev);
073120cc28ad9f6 Kay Sievers            2009-10-28  1654  extern int devtmpfs_mount(const char *mntdir);
2b2af54a5bb6f7e Kay Sievers            2009-04-30  1655  #else
2b2af54a5bb6f7e Kay Sievers            2009-04-30  1656  static inline int devtmpfs_create_node(struct device *dev) { return 0; }
2b2af54a5bb6f7e Kay Sievers            2009-04-30  1657  static inline int devtmpfs_delete_node(struct device *dev) { return 0; }
2b2af54a5bb6f7e Kay Sievers            2009-04-30  1658  static inline int devtmpfs_mount(const char *mountpoint) { return 0; }
2b2af54a5bb6f7e Kay Sievers            2009-04-30  1659  #endif
2b2af54a5bb6f7e Kay Sievers            2009-04-30  1660  
116f232b3794a8b Rytchkov Alexey        2006-03-22  1661  /* drivers/base/power/shutdown.c */
^1da177e4c3f415 Linus Torvalds         2005-04-16  1662  extern void device_shutdown(void);
^1da177e4c3f415 Linus Torvalds         2005-04-16  1663  
^1da177e4c3f415 Linus Torvalds         2005-04-16  1664  /* debugging and troubleshooting/diagnostic helpers. */
bf9ca69fc8d19d4 Jean Delvare           2008-07-30  1665  extern const char *dev_driver_string(const struct device *dev);
99bcf217183e02e Joe Perches            2010-06-27  1666  
9ed9895370aedd6 Rafael J. Wysocki      2016-10-30  1667  /* Device links interface. */
9ed9895370aedd6 Rafael J. Wysocki      2016-10-30  1668  struct device_link *device_link_add(struct device *consumer,
9ed9895370aedd6 Rafael J. Wysocki      2016-10-30  1669  				    struct device *supplier, u32 flags);
9ed9895370aedd6 Rafael J. Wysocki      2016-10-30  1670  void device_link_del(struct device_link *link);
d8842211b6f63d3 pascal paillet         2018-07-05  1671  void device_link_remove(void *consumer, struct device *supplier);
d4d28915bc4a5db Saravana Kannan        2019-07-29  1672  void device_link_remove_from_wfs(struct device *consumer);
99bcf217183e02e Joe Perches            2010-06-27  1673  
663336ee2628096 Joe Perches            2018-05-09  1674  #ifndef dev_fmt
663336ee2628096 Joe Perches            2018-05-09  1675  #define dev_fmt(fmt) fmt
663336ee2628096 Joe Perches            2018-05-09  1676  #endif
663336ee2628096 Joe Perches            2018-05-09  1677  
99bcf217183e02e Joe Perches            2010-06-27  1678  #ifdef CONFIG_PRINTK
99bcf217183e02e Joe Perches            2010-06-27  1679  
79a4e91d1bb2a41 Joe Perches            2019-02-02  1680  __printf(3, 0) __cold
0a18b05043acc01 Joe Perches            2012-09-25  1681  int dev_vprintk_emit(int level, const struct device *dev,
05e4e5b87aab74f Joe Perches            2012-09-12  1682  		     const char *fmt, va_list args);
79a4e91d1bb2a41 Joe Perches            2019-02-02  1683  __printf(3, 4) __cold
05e4e5b87aab74f Joe Perches            2012-09-12  1684  int dev_printk_emit(int level, const struct device *dev, const char *fmt, ...);
798efc60e427682 Joe Perches            2012-09-12  1685  
79a4e91d1bb2a41 Joe Perches            2019-02-02  1686  __printf(3, 4) __cold
d1f1052c5204524 Joe Perches            2014-12-25  1687  void dev_printk(const char *level, const struct device *dev,
798efc60e427682 Joe Perches            2012-09-12  1688  		const char *fmt, ...);
79a4e91d1bb2a41 Joe Perches            2019-02-02  1689  __printf(2, 3) __cold
663336ee2628096 Joe Perches            2018-05-09  1690  void _dev_emerg(const struct device *dev, const char *fmt, ...);
79a4e91d1bb2a41 Joe Perches            2019-02-02  1691  __printf(2, 3) __cold
663336ee2628096 Joe Perches            2018-05-09  1692  void _dev_alert(const struct device *dev, const char *fmt, ...);
79a4e91d1bb2a41 Joe Perches            2019-02-02  1693  __printf(2, 3) __cold
663336ee2628096 Joe Perches            2018-05-09  1694  void _dev_crit(const struct device *dev, const char *fmt, ...);
79a4e91d1bb2a41 Joe Perches            2019-02-02  1695  __printf(2, 3) __cold
663336ee2628096 Joe Perches            2018-05-09  1696  void _dev_err(const struct device *dev, const char *fmt, ...);
79a4e91d1bb2a41 Joe Perches            2019-02-02  1697  __printf(2, 3) __cold
663336ee2628096 Joe Perches            2018-05-09  1698  void _dev_warn(const struct device *dev, const char *fmt, ...);
79a4e91d1bb2a41 Joe Perches            2019-02-02  1699  __printf(2, 3) __cold
663336ee2628096 Joe Perches            2018-05-09  1700  void _dev_notice(const struct device *dev, const char *fmt, ...);
79a4e91d1bb2a41 Joe Perches            2019-02-02  1701  __printf(2, 3) __cold
d1f1052c5204524 Joe Perches            2014-12-25  1702  void _dev_info(const struct device *dev, const char *fmt, ...);
99bcf217183e02e Joe Perches            2010-06-27  1703  
99bcf217183e02e Joe Perches            2010-06-27  1704  #else
99bcf217183e02e Joe Perches            2010-06-27  1705  
0a18b05043acc01 Joe Perches            2012-09-25  1706  static inline __printf(3, 0)
0a18b05043acc01 Joe Perches            2012-09-25  1707  int dev_vprintk_emit(int level, const struct device *dev,
05e4e5b87aab74f Joe Perches            2012-09-12  1708  		     const char *fmt, va_list args)
05e4e5b87aab74f Joe Perches            2012-09-12  1709  { return 0; }
05e4e5b87aab74f Joe Perches            2012-09-12  1710  static inline __printf(3, 4)
05e4e5b87aab74f Joe Perches            2012-09-12  1711  int dev_printk_emit(int level, const struct device *dev, const char *fmt, ...)
05e4e5b87aab74f Joe Perches            2012-09-12  1712  { return 0; }
05e4e5b87aab74f Joe Perches            2012-09-12  1713  
d1f1052c5204524 Joe Perches            2014-12-25  1714  static inline void __dev_printk(const char *level, const struct device *dev,
cbc4663552ee476 Joe Perches            2011-08-11  1715  				struct va_format *vaf)
d1f1052c5204524 Joe Perches            2014-12-25  1716  {}
b9075fa968a0a43 Joe Perches            2011-10-31  1717  static inline __printf(3, 4)
d1f1052c5204524 Joe Perches            2014-12-25  1718  void dev_printk(const char *level, const struct device *dev,
99bcf217183e02e Joe Perches            2010-06-27  1719  		 const char *fmt, ...)
d1f1052c5204524 Joe Perches            2014-12-25  1720  {}
99bcf217183e02e Joe Perches            2010-06-27  1721  
b9075fa968a0a43 Joe Perches            2011-10-31  1722  static inline __printf(2, 3)
663336ee2628096 Joe Perches            2018-05-09  1723  void _dev_emerg(const struct device *dev, const char *fmt, ...)
d1f1052c5204524 Joe Perches            2014-12-25  1724  {}
b9075fa968a0a43 Joe Perches            2011-10-31  1725  static inline __printf(2, 3)
663336ee2628096 Joe Perches            2018-05-09  1726  void _dev_crit(const struct device *dev, const char *fmt, ...)
d1f1052c5204524 Joe Perches            2014-12-25  1727  {}
b9075fa968a0a43 Joe Perches            2011-10-31  1728  static inline __printf(2, 3)
663336ee2628096 Joe Perches            2018-05-09  1729  void _dev_alert(const struct device *dev, const char *fmt, ...)
d1f1052c5204524 Joe Perches            2014-12-25  1730  {}
b9075fa968a0a43 Joe Perches            2011-10-31  1731  static inline __printf(2, 3)
663336ee2628096 Joe Perches            2018-05-09  1732  void _dev_err(const struct device *dev, const char *fmt, ...)
d1f1052c5204524 Joe Perches            2014-12-25  1733  {}
b9075fa968a0a43 Joe Perches            2011-10-31  1734  static inline __printf(2, 3)
663336ee2628096 Joe Perches            2018-05-09  1735  void _dev_warn(const struct device *dev, const char *fmt, ...)
d1f1052c5204524 Joe Perches            2014-12-25  1736  {}
b9075fa968a0a43 Joe Perches            2011-10-31  1737  static inline __printf(2, 3)
663336ee2628096 Joe Perches            2018-05-09  1738  void _dev_notice(const struct device *dev, const char *fmt, ...)
d1f1052c5204524 Joe Perches            2014-12-25  1739  {}
b9075fa968a0a43 Joe Perches            2011-10-31  1740  static inline __printf(2, 3)
d1f1052c5204524 Joe Perches            2014-12-25  1741  void _dev_info(const struct device *dev, const char *fmt, ...)
d1f1052c5204524 Joe Perches            2014-12-25  1742  {}
99bcf217183e02e Joe Perches            2010-06-27  1743  
99bcf217183e02e Joe Perches            2010-06-27  1744  #endif
99bcf217183e02e Joe Perches            2010-06-27  1745  
6f586e663e3b367 Hiroshi Doyu           2012-09-04  1746  /*
663336ee2628096 Joe Perches            2018-05-09  1747   * #defines for all the dev_<level> macros to prefix with whatever
663336ee2628096 Joe Perches            2018-05-09  1748   * possible use of #define dev_fmt(fmt) ...
6f586e663e3b367 Hiroshi Doyu           2012-09-04  1749   */
6f586e663e3b367 Hiroshi Doyu           2012-09-04  1750  
663336ee2628096 Joe Perches            2018-05-09  1751  #define dev_emerg(dev, fmt, ...)					\
663336ee2628096 Joe Perches            2018-05-09  1752  	_dev_emerg(dev, dev_fmt(fmt), ##__VA_ARGS__)
663336ee2628096 Joe Perches            2018-05-09  1753  #define dev_crit(dev, fmt, ...)						\
663336ee2628096 Joe Perches            2018-05-09  1754  	_dev_crit(dev, dev_fmt(fmt), ##__VA_ARGS__)
663336ee2628096 Joe Perches            2018-05-09  1755  #define dev_alert(dev, fmt, ...)					\
663336ee2628096 Joe Perches            2018-05-09  1756  	_dev_alert(dev, dev_fmt(fmt), ##__VA_ARGS__)
663336ee2628096 Joe Perches            2018-05-09  1757  #define dev_err(dev, fmt, ...)						\
663336ee2628096 Joe Perches            2018-05-09  1758  	_dev_err(dev, dev_fmt(fmt), ##__VA_ARGS__)
663336ee2628096 Joe Perches            2018-05-09  1759  #define dev_warn(dev, fmt, ...)						\
663336ee2628096 Joe Perches            2018-05-09  1760  	_dev_warn(dev, dev_fmt(fmt), ##__VA_ARGS__)
663336ee2628096 Joe Perches            2018-05-09  1761  #define dev_notice(dev, fmt, ...)					\
663336ee2628096 Joe Perches            2018-05-09  1762  	_dev_notice(dev, dev_fmt(fmt), ##__VA_ARGS__)
663336ee2628096 Joe Perches            2018-05-09  1763  #define dev_info(dev, fmt, ...)						\
663336ee2628096 Joe Perches            2018-05-09  1764  	_dev_info(dev, dev_fmt(fmt), ##__VA_ARGS__)
6f586e663e3b367 Hiroshi Doyu           2012-09-04  1765  
6f586e663e3b367 Hiroshi Doyu           2012-09-04  1766  #if defined(CONFIG_DYNAMIC_DEBUG)
663336ee2628096 Joe Perches            2018-05-09  1767  #define dev_dbg(dev, fmt, ...)						\
663336ee2628096 Joe Perches            2018-05-09  1768  	dynamic_dev_dbg(dev, dev_fmt(fmt), ##__VA_ARGS__)
6f586e663e3b367 Hiroshi Doyu           2012-09-04  1769  #elif defined(DEBUG)
663336ee2628096 Joe Perches            2018-05-09  1770  #define dev_dbg(dev, fmt, ...)						\
663336ee2628096 Joe Perches            2018-05-09  1771  	dev_printk(KERN_DEBUG, dev, dev_fmt(fmt), ##__VA_ARGS__)
6f586e663e3b367 Hiroshi Doyu           2012-09-04  1772  #else
663336ee2628096 Joe Perches            2018-05-09  1773  #define dev_dbg(dev, fmt, ...)						\
6f586e663e3b367 Hiroshi Doyu           2012-09-04  1774  ({									\
6f586e663e3b367 Hiroshi Doyu           2012-09-04  1775  	if (0)								\
663336ee2628096 Joe Perches            2018-05-09  1776  		dev_printk(KERN_DEBUG, dev, dev_fmt(fmt), ##__VA_ARGS__); \
6f586e663e3b367 Hiroshi Doyu           2012-09-04  1777  })
6f586e663e3b367 Hiroshi Doyu           2012-09-04  1778  #endif
6f586e663e3b367 Hiroshi Doyu           2012-09-04  1779  
e135303bd5bebcd Joe Perches            2014-11-17  1780  #ifdef CONFIG_PRINTK
e135303bd5bebcd Joe Perches            2014-11-17  1781  #define dev_level_once(dev_level, dev, fmt, ...)			\
e135303bd5bebcd Joe Perches            2014-11-17  1782  do {									\
e135303bd5bebcd Joe Perches            2014-11-17  1783  	static bool __print_once __read_mostly;				\
e135303bd5bebcd Joe Perches            2014-11-17  1784  									\
e135303bd5bebcd Joe Perches            2014-11-17  1785  	if (!__print_once) {						\
e135303bd5bebcd Joe Perches            2014-11-17  1786  		__print_once = true;					\
e135303bd5bebcd Joe Perches            2014-11-17  1787  		dev_level(dev, fmt, ##__VA_ARGS__);			\
e135303bd5bebcd Joe Perches            2014-11-17  1788  	}								\
e135303bd5bebcd Joe Perches            2014-11-17  1789  } while (0)
e135303bd5bebcd Joe Perches            2014-11-17  1790  #else
e135303bd5bebcd Joe Perches            2014-11-17  1791  #define dev_level_once(dev_level, dev, fmt, ...)			\
e135303bd5bebcd Joe Perches            2014-11-17  1792  do {									\
e135303bd5bebcd Joe Perches            2014-11-17  1793  	if (0)								\
e135303bd5bebcd Joe Perches            2014-11-17  1794  		dev_level(dev, fmt, ##__VA_ARGS__);			\
e135303bd5bebcd Joe Perches            2014-11-17  1795  } while (0)
e135303bd5bebcd Joe Perches            2014-11-17  1796  #endif
e135303bd5bebcd Joe Perches            2014-11-17  1797  
e135303bd5bebcd Joe Perches            2014-11-17  1798  #define dev_emerg_once(dev, fmt, ...)					\
e135303bd5bebcd Joe Perches            2014-11-17  1799  	dev_level_once(dev_emerg, dev, fmt, ##__VA_ARGS__)
e135303bd5bebcd Joe Perches            2014-11-17  1800  #define dev_alert_once(dev, fmt, ...)					\
e135303bd5bebcd Joe Perches            2014-11-17  1801  	dev_level_once(dev_alert, dev, fmt, ##__VA_ARGS__)
e135303bd5bebcd Joe Perches            2014-11-17  1802  #define dev_crit_once(dev, fmt, ...)					\
e135303bd5bebcd Joe Perches            2014-11-17  1803  	dev_level_once(dev_crit, dev, fmt, ##__VA_ARGS__)
e135303bd5bebcd Joe Perches            2014-11-17  1804  #define dev_err_once(dev, fmt, ...)					\
e135303bd5bebcd Joe Perches            2014-11-17  1805  	dev_level_once(dev_err, dev, fmt, ##__VA_ARGS__)
e135303bd5bebcd Joe Perches            2014-11-17  1806  #define dev_warn_once(dev, fmt, ...)					\
e135303bd5bebcd Joe Perches            2014-11-17  1807  	dev_level_once(dev_warn, dev, fmt, ##__VA_ARGS__)
e135303bd5bebcd Joe Perches            2014-11-17  1808  #define dev_notice_once(dev, fmt, ...)					\
e135303bd5bebcd Joe Perches            2014-11-17  1809  	dev_level_once(dev_notice, dev, fmt, ##__VA_ARGS__)
e135303bd5bebcd Joe Perches            2014-11-17  1810  #define dev_info_once(dev, fmt, ...)					\
e135303bd5bebcd Joe Perches            2014-11-17  1811  	dev_level_once(dev_info, dev, fmt, ##__VA_ARGS__)
e135303bd5bebcd Joe Perches            2014-11-17  1812  #define dev_dbg_once(dev, fmt, ...)					\
a2a15d54ab2d5c8 Joe Perches            2015-01-03  1813  	dev_level_once(dev_dbg, dev, fmt, ##__VA_ARGS__)
e135303bd5bebcd Joe Perches            2014-11-17  1814  
6ca045930338485 Hiroshi DOYU           2012-05-14  1815  #define dev_level_ratelimited(dev_level, dev, fmt, ...)			\
6ca045930338485 Hiroshi DOYU           2012-05-14  1816  do {									\
6ca045930338485 Hiroshi DOYU           2012-05-14  1817  	static DEFINE_RATELIMIT_STATE(_rs,				\
6ca045930338485 Hiroshi DOYU           2012-05-14  1818  				      DEFAULT_RATELIMIT_INTERVAL,	\
6ca045930338485 Hiroshi DOYU           2012-05-14  1819  				      DEFAULT_RATELIMIT_BURST);		\
6ca045930338485 Hiroshi DOYU           2012-05-14  1820  	if (__ratelimit(&_rs))						\
6ca045930338485 Hiroshi DOYU           2012-05-14  1821  		dev_level(dev, fmt, ##__VA_ARGS__);			\
6ca045930338485 Hiroshi DOYU           2012-05-14  1822  } while (0)
6ca045930338485 Hiroshi DOYU           2012-05-14  1823  
6ca045930338485 Hiroshi DOYU           2012-05-14  1824  #define dev_emerg_ratelimited(dev, fmt, ...)				\
6ca045930338485 Hiroshi DOYU           2012-05-14  1825  	dev_level_ratelimited(dev_emerg, dev, fmt, ##__VA_ARGS__)
6ca045930338485 Hiroshi DOYU           2012-05-14  1826  #define dev_alert_ratelimited(dev, fmt, ...)				\
6ca045930338485 Hiroshi DOYU           2012-05-14  1827  	dev_level_ratelimited(dev_alert, dev, fmt, ##__VA_ARGS__)
6ca045930338485 Hiroshi DOYU           2012-05-14  1828  #define dev_crit_ratelimited(dev, fmt, ...)				\
6ca045930338485 Hiroshi DOYU           2012-05-14  1829  	dev_level_ratelimited(dev_crit, dev, fmt, ##__VA_ARGS__)
6ca045930338485 Hiroshi DOYU           2012-05-14  1830  #define dev_err_ratelimited(dev, fmt, ...)				\
6ca045930338485 Hiroshi DOYU           2012-05-14  1831  	dev_level_ratelimited(dev_err, dev, fmt, ##__VA_ARGS__)
6ca045930338485 Hiroshi DOYU           2012-05-14  1832  #define dev_warn_ratelimited(dev, fmt, ...)				\
6ca045930338485 Hiroshi DOYU           2012-05-14  1833  	dev_level_ratelimited(dev_warn, dev, fmt, ##__VA_ARGS__)
6ca045930338485 Hiroshi DOYU           2012-05-14  1834  #define dev_notice_ratelimited(dev, fmt, ...)				\
6ca045930338485 Hiroshi DOYU           2012-05-14  1835  	dev_level_ratelimited(dev_notice, dev, fmt, ##__VA_ARGS__)
6ca045930338485 Hiroshi DOYU           2012-05-14  1836  #define dev_info_ratelimited(dev, fmt, ...)				\
6ca045930338485 Hiroshi DOYU           2012-05-14  1837  	dev_level_ratelimited(dev_info, dev, fmt, ##__VA_ARGS__)
8ef2d6511f7eba8 Dmitry Kasatkin        2013-08-27  1838  #if defined(CONFIG_DYNAMIC_DEBUG)
8ef2d6511f7eba8 Dmitry Kasatkin        2013-08-27  1839  /* descriptor check is first to prevent flooding with "callbacks suppressed" */
6ca045930338485 Hiroshi DOYU           2012-05-14  1840  #define dev_dbg_ratelimited(dev, fmt, ...)				\
99bcf217183e02e Joe Perches            2010-06-27  1841  do {									\
6f586e663e3b367 Hiroshi Doyu           2012-09-04  1842  	static DEFINE_RATELIMIT_STATE(_rs,				\
6f586e663e3b367 Hiroshi Doyu           2012-09-04  1843  				      DEFAULT_RATELIMIT_INTERVAL,	\
6f586e663e3b367 Hiroshi Doyu           2012-09-04  1844  				      DEFAULT_RATELIMIT_BURST);		\
6f586e663e3b367 Hiroshi Doyu           2012-09-04  1845  	DEFINE_DYNAMIC_DEBUG_METADATA(descriptor, fmt);			\
e0b73d7beb919ad Rasmus Villemoes       2019-03-07  1846  	if (DYNAMIC_DEBUG_BRANCH(descriptor) &&				\
6f586e663e3b367 Hiroshi Doyu           2012-09-04  1847  	    __ratelimit(&_rs))						\
663336ee2628096 Joe Perches            2018-05-09  1848  		__dynamic_dev_dbg(&descriptor, dev, dev_fmt(fmt),	\
6f586e663e3b367 Hiroshi Doyu           2012-09-04  1849  				  ##__VA_ARGS__);			\
346e15beb5343c2 Jason Baron            2008-08-12  1850  } while (0)
8ef2d6511f7eba8 Dmitry Kasatkin        2013-08-27  1851  #elif defined(DEBUG)
8ef2d6511f7eba8 Dmitry Kasatkin        2013-08-27  1852  #define dev_dbg_ratelimited(dev, fmt, ...)				\
8ef2d6511f7eba8 Dmitry Kasatkin        2013-08-27  1853  do {									\
8ef2d6511f7eba8 Dmitry Kasatkin        2013-08-27  1854  	static DEFINE_RATELIMIT_STATE(_rs,				\
8ef2d6511f7eba8 Dmitry Kasatkin        2013-08-27  1855  				      DEFAULT_RATELIMIT_INTERVAL,	\
8ef2d6511f7eba8 Dmitry Kasatkin        2013-08-27  1856  				      DEFAULT_RATELIMIT_BURST);		\
8ef2d6511f7eba8 Dmitry Kasatkin        2013-08-27  1857  	if (__ratelimit(&_rs))						\
663336ee2628096 Joe Perches            2018-05-09  1858  		dev_printk(KERN_DEBUG, dev, dev_fmt(fmt), ##__VA_ARGS__); \
8ef2d6511f7eba8 Dmitry Kasatkin        2013-08-27  1859  } while (0)
^1da177e4c3f415 Linus Torvalds         2005-04-16  1860  #else
6f586e663e3b367 Hiroshi Doyu           2012-09-04  1861  #define dev_dbg_ratelimited(dev, fmt, ...)				\
1f62ff34a90471d Arnd Bergmann          2016-03-24  1862  do {									\
1f62ff34a90471d Arnd Bergmann          2016-03-24  1863  	if (0)								\
663336ee2628096 Joe Perches            2018-05-09  1864  		dev_printk(KERN_DEBUG, dev, dev_fmt(fmt), ##__VA_ARGS__); \
1f62ff34a90471d Arnd Bergmann          2016-03-24  1865  } while (0)
^1da177e4c3f415 Linus Torvalds         2005-04-16  1866  #endif
^1da177e4c3f415 Linus Torvalds         2005-04-16  1867  
aebdc3b450a3feb David Brownell         2007-07-12  1868  #ifdef VERBOSE_DEBUG
aebdc3b450a3feb David Brownell         2007-07-12  1869  #define dev_vdbg	dev_dbg
aebdc3b450a3feb David Brownell         2007-07-12  1870  #else
663336ee2628096 Joe Perches            2018-05-09  1871  #define dev_vdbg(dev, fmt, ...)						\
99bcf217183e02e Joe Perches            2010-06-27  1872  ({									\
99bcf217183e02e Joe Perches            2010-06-27  1873  	if (0)								\
663336ee2628096 Joe Perches            2018-05-09  1874  		dev_printk(KERN_DEBUG, dev, dev_fmt(fmt), ##__VA_ARGS__); \
99bcf217183e02e Joe Perches            2010-06-27  1875  })
aebdc3b450a3feb David Brownell         2007-07-12  1876  #endif
aebdc3b450a3feb David Brownell         2007-07-12  1877  
e61396627f91abb Arjan van de Ven       2008-09-20  1878  /*
3eae13671716492 Bjorn Helgaas          2013-10-24  1879   * dev_WARN*() acts like dev_printk(), but with the key difference of
3eae13671716492 Bjorn Helgaas          2013-10-24  1880   * using WARN/WARN_ONCE to include file/line information and a backtrace.
e61396627f91abb Arjan van de Ven       2008-09-20  1881   */
e61396627f91abb Arjan van de Ven       2008-09-20  1882  #define dev_WARN(dev, format, arg...) \
3eae13671716492 Bjorn Helgaas          2013-10-24  1883  	WARN(1, "%s %s: " format, dev_driver_string(dev), dev_name(dev), ## arg);
e61396627f91abb Arjan van de Ven       2008-09-20  1884  
bcdd323b893ad3c Felipe Balbi           2011-03-16  1885  #define dev_WARN_ONCE(dev, condition, format, arg...) \
3eae13671716492 Bjorn Helgaas          2013-10-24  1886  	WARN_ONCE(condition, "%s %s: " format, \
3eae13671716492 Bjorn Helgaas          2013-10-24  1887  			dev_driver_string(dev), dev_name(dev), ## arg)
bcdd323b893ad3c Felipe Balbi           2011-03-16  1888  
^1da177e4c3f415 Linus Torvalds         2005-04-16  1889  /* Create alias, so I can be autoloaded. */
^1da177e4c3f415 Linus Torvalds         2005-04-16  1890  #define MODULE_ALIAS_CHARDEV(major,minor) \
^1da177e4c3f415 Linus Torvalds         2005-04-16  1891  	MODULE_ALIAS("char-major-" __stringify(major) "-" __stringify(minor))
^1da177e4c3f415 Linus Torvalds         2005-04-16  1892  #define MODULE_ALIAS_CHARDEV_MAJOR(major) \
^1da177e4c3f415 Linus Torvalds         2005-04-16  1893  	MODULE_ALIAS("char-major-" __stringify(major) "-*")
e52eec13cd6b7f3 Andi Kleen             2010-09-08  1894  
e52eec13cd6b7f3 Andi Kleen             2010-09-08  1895  #ifdef CONFIG_SYSFS_DEPRECATED
e52eec13cd6b7f3 Andi Kleen             2010-09-08  1896  extern long sysfs_deprecated;
e52eec13cd6b7f3 Andi Kleen             2010-09-08  1897  #else
e52eec13cd6b7f3 Andi Kleen             2010-09-08  1898  #define sysfs_deprecated 0
e52eec13cd6b7f3 Andi Kleen             2010-09-08  1899  #endif
e52eec13cd6b7f3 Andi Kleen             2010-09-08  1900  
907d0ed1c84114d Lars-Peter Clausen     2011-11-16  1901  /**
907d0ed1c84114d Lars-Peter Clausen     2011-11-16  1902   * module_driver() - Helper macro for drivers that don't do anything
907d0ed1c84114d Lars-Peter Clausen     2011-11-16  1903   * special in module init/exit. This eliminates a lot of boilerplate.
907d0ed1c84114d Lars-Peter Clausen     2011-11-16  1904   * Each module may only use this macro once, and calling it replaces
907d0ed1c84114d Lars-Peter Clausen     2011-11-16  1905   * module_init() and module_exit().
907d0ed1c84114d Lars-Peter Clausen     2011-11-16  1906   *
2eda013f4894bc2 Randy Dunlap           2012-01-21  1907   * @__driver: driver name
2eda013f4894bc2 Randy Dunlap           2012-01-21  1908   * @__register: register function for this driver type
2eda013f4894bc2 Randy Dunlap           2012-01-21  1909   * @__unregister: unregister function for this driver type
cd4946188aac597 Lars-Peter Clausen     2012-02-25  1910   * @...: Additional arguments to be passed to __register and __unregister.
2eda013f4894bc2 Randy Dunlap           2012-01-21  1911   *
907d0ed1c84114d Lars-Peter Clausen     2011-11-16  1912   * Use this macro to construct bus specific macros for registering
907d0ed1c84114d Lars-Peter Clausen     2011-11-16  1913   * drivers, and do not use it on its own.
907d0ed1c84114d Lars-Peter Clausen     2011-11-16  1914   */
cd4946188aac597 Lars-Peter Clausen     2012-02-25  1915  #define module_driver(__driver, __register, __unregister, ...) \
907d0ed1c84114d Lars-Peter Clausen     2011-11-16  1916  static int __init __driver##_init(void) \
907d0ed1c84114d Lars-Peter Clausen     2011-11-16  1917  { \
cd4946188aac597 Lars-Peter Clausen     2012-02-25  1918  	return __register(&(__driver) , ##__VA_ARGS__); \
907d0ed1c84114d Lars-Peter Clausen     2011-11-16  1919  } \
907d0ed1c84114d Lars-Peter Clausen     2011-11-16  1920  module_init(__driver##_init); \
907d0ed1c84114d Lars-Peter Clausen     2011-11-16  1921  static void __exit __driver##_exit(void) \
907d0ed1c84114d Lars-Peter Clausen     2011-11-16  1922  { \
cd4946188aac597 Lars-Peter Clausen     2012-02-25  1923  	__unregister(&(__driver) , ##__VA_ARGS__); \
907d0ed1c84114d Lars-Peter Clausen     2011-11-16  1924  } \
907d0ed1c84114d Lars-Peter Clausen     2011-11-16  1925  module_exit(__driver##_exit);
907d0ed1c84114d Lars-Peter Clausen     2011-11-16  1926  
f309d4443130bf8 Paul Gortmaker         2015-05-01  1927  /**
f309d4443130bf8 Paul Gortmaker         2015-05-01  1928   * builtin_driver() - Helper macro for drivers that don't do anything
f309d4443130bf8 Paul Gortmaker         2015-05-01  1929   * special in init and have no exit. This eliminates some boilerplate.
f309d4443130bf8 Paul Gortmaker         2015-05-01  1930   * Each driver may only use this macro once, and calling it replaces
f309d4443130bf8 Paul Gortmaker         2015-05-01  1931   * device_initcall (or in some cases, the legacy __initcall).  This is
f309d4443130bf8 Paul Gortmaker         2015-05-01  1932   * meant to be a direct parallel of module_driver() above but without
f309d4443130bf8 Paul Gortmaker         2015-05-01  1933   * the __exit stuff that is not used for builtin cases.
f309d4443130bf8 Paul Gortmaker         2015-05-01  1934   *
f309d4443130bf8 Paul Gortmaker         2015-05-01  1935   * @__driver: driver name
f309d4443130bf8 Paul Gortmaker         2015-05-01  1936   * @__register: register function for this driver type
f309d4443130bf8 Paul Gortmaker         2015-05-01  1937   * @...: Additional arguments to be passed to __register
f309d4443130bf8 Paul Gortmaker         2015-05-01  1938   *
f309d4443130bf8 Paul Gortmaker         2015-05-01  1939   * Use this macro to construct bus specific macros for registering
f309d4443130bf8 Paul Gortmaker         2015-05-01  1940   * drivers, and do not use it on its own.
f309d4443130bf8 Paul Gortmaker         2015-05-01  1941   */
f309d4443130bf8 Paul Gortmaker         2015-05-01  1942  #define builtin_driver(__driver, __register, ...) \
f309d4443130bf8 Paul Gortmaker         2015-05-01  1943  static int __init __driver##_init(void) \
f309d4443130bf8 Paul Gortmaker         2015-05-01  1944  { \
f309d4443130bf8 Paul Gortmaker         2015-05-01  1945  	return __register(&(__driver) , ##__VA_ARGS__); \
f309d4443130bf8 Paul Gortmaker         2015-05-01  1946  } \
f309d4443130bf8 Paul Gortmaker         2015-05-01  1947  device_initcall(__driver##_init);
f309d4443130bf8 Paul Gortmaker         2015-05-01  1948  
^1da177e4c3f415 Linus Torvalds         2005-04-16  1949  #endif /* _DEVICE_H_ */

:::::: The code at line 1336 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--qlrl4lba27mwl63d
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--qlrl4lba27mwl63d
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--qlrl4lba27mwl63d--
