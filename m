Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7D9F82B8
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Nov 2019 23:07:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E0B88864E0;
	Mon, 11 Nov 2019 22:07:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eePC+2TBCufJ; Mon, 11 Nov 2019 22:07:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 21C3C86B9E;
	Mon, 11 Nov 2019 22:07:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 213E91BF390
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 22:06:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0CBF2864E0
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 22:06:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vyv-kmllYYb3 for <devel@linuxdriverproject.org>;
 Mon, 11 Nov 2019 22:06:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 59C1C864D8
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 22:06:51 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 14:06:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,294,1569308400"; 
 d="gz'50?scan'50,208,50";a="229062693"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 11 Nov 2019 14:06:49 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iUHpg-0007un-R8; Tue, 12 Nov 2019 06:06:48 +0800
Date: Tue, 12 Nov 2019 06:05:52 +0800
From: kbuild test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:device_h_splitup 56/57]
 include/linux/device/bus.h:87:43: warning: 'struct kobj_uevent_env' declared
 inside parameter list
Message-ID: <201911120650.qFXZNxjS%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="iwcq2iblpeqeu3tg"
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
Cc: devel@driverdev.osuosl.org, kbuild-all@lists.01.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--iwcq2iblpeqeu3tg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git device_h_splitup
head:   f9582e3b228292a3c646866487a437e075fc0ee5
commit: 43ed4c24a977067ac76d7b6051829934fb59ae2f [56/57] device.h: move 'struct bus' stuff out to device/bus.h
config: x86_64-randconfig-a001-201945 (attached as .config)
compiler: gcc-5 (Ubuntu 5.5.0-12ubuntu1) 5.5.0 20171010
reproduce:
        git checkout 43ed4c24a977067ac76d7b6051829934fb59ae2f
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from <command-line>:0:0:
>> include/linux/device/bus.h:87:43: warning: 'struct kobj_uevent_env' declared inside parameter list
     int (*uevent)(struct device *dev, struct kobj_uevent_env *env);
                                              ^
>> include/linux/device/bus.h:87:43: warning: its scope is only this definition or declaration, which is probably not what you want
   include/linux/device/bus.h:96:37: error: unknown type name 'pm_message_t'
     int (*suspend)(struct device *dev, pm_message_t state);
                                        ^
   include/linux/device/bus.h:108:24: error: field 'lock_key' has incomplete type
     struct lock_class_key lock_key;
                           ^
   include/linux/device/bus.h:110:2: error: unknown type name 'bool'
     bool need_parent_lock;
     ^
   include/linux/device/bus.h:120:19: error: field 'attr' has incomplete type
     struct attribute attr;
                      ^
   include/linux/device/bus.h:121:2: error: expected specifier-qualifier-list before 'ssize_t'
     ssize_t (*show)(struct bus_type *bus, char *buf);
     ^
   include/linux/device/bus.h:146:21: error: field 'ki' has incomplete type
     struct klist_iter  ki;
                        ^
>> include/linux/device/bus.h:182:63: warning: 'struct device_node' declared inside parameter list
    bus_find_device_by_of_node(struct bus_type *bus, const struct device_node *np)
                                                                  ^
   include/linux/device/bus.h: In function 'bus_find_device_by_of_node':
   include/linux/device/bus.h:184:30: error: 'NULL' undeclared (first use in this function)
     return bus_find_device(bus, NULL, np, device_match_of_node);
                                 ^
   include/linux/device/bus.h:184:30: note: each undeclared identifier is reported only once for each function it appears in
   include/linux/device/bus.h: In function 'bus_find_device_by_fwnode':
   include/linux/device/bus.h:196:30: error: 'NULL' undeclared (first use in this function)
     return bus_find_device(bus, NULL, fwnode, device_match_fwnode);
                                 ^
   include/linux/device/bus.h: At top level:
   include/linux/device/bus.h:206:12: error: unknown type name 'dev_t'
               dev_t devt)
               ^
   include/linux/device/bus.h: In function 'bus_find_next_device':
   include/linux/device/bus.h:220:35: error: 'NULL' undeclared (first use in this function)
     return bus_find_device(bus, cur, NULL, device_match_any);
                                      ^
   include/linux/device/bus.h: In function 'bus_find_device_by_acpi_dev':
   include/linux/device/bus.h:235:30: error: 'NULL' undeclared (first use in this function)
     return bus_find_device(bus, NULL, adev, device_match_acpi_dev);
                                 ^

vim +87 include/linux/device/bus.h

    19	
    20	/**
    21	 * struct bus_type - The bus type of the device
    22	 *
    23	 * @name:	The name of the bus.
    24	 * @dev_name:	Used for subsystems to enumerate devices like ("foo%u", dev->id).
    25	 * @dev_root:	Default device to use as the parent.
    26	 * @bus_groups:	Default attributes of the bus.
    27	 * @dev_groups:	Default attributes of the devices on the bus.
    28	 * @drv_groups: Default attributes of the device drivers on the bus.
    29	 * @match:	Called, perhaps multiple times, whenever a new device or driver
    30	 *		is added for this bus. It should return a positive value if the
    31	 *		given device can be handled by the given driver and zero
    32	 *		otherwise. It may also return error code if determining that
    33	 *		the driver supports the device is not possible. In case of
    34	 *		-EPROBE_DEFER it will queue the device for deferred probing.
    35	 * @uevent:	Called when a device is added, removed, or a few other things
    36	 *		that generate uevents to add the environment variables.
    37	 * @probe:	Called when a new device or driver add to this bus, and callback
    38	 *		the specific driver's probe to initial the matched device.
    39	 * @sync_state:	Called to sync device state to software state after all the
    40	 *		state tracking consumers linked to this device (present at
    41	 *		the time of late_initcall) have successfully bound to a
    42	 *		driver. If the device has no consumers, this function will
    43	 *		be called at late_initcall_sync level. If the device has
    44	 *		consumers that are never bound to a driver, this function
    45	 *		will never get called until they do.
    46	 * @remove:	Called when a device removed from this bus.
    47	 * @shutdown:	Called at shut-down time to quiesce the device.
    48	 *
    49	 * @online:	Called to put the device back online (after offlining it).
    50	 * @offline:	Called to put the device offline for hot-removal. May fail.
    51	 *
    52	 * @suspend:	Called when a device on this bus wants to go to sleep mode.
    53	 * @resume:	Called to bring a device on this bus out of sleep mode.
    54	 * @num_vf:	Called to find out how many virtual functions a device on this
    55	 *		bus supports.
    56	 * @dma_configure:	Called to setup DMA configuration on a device on
    57	 *			this bus.
    58	 * @pm:		Power management operations of this bus, callback the specific
    59	 *		device driver's pm-ops.
    60	 * @iommu_ops:  IOMMU specific operations for this bus, used to attach IOMMU
    61	 *              driver implementations to a bus and allow the driver to do
    62	 *              bus-specific setup
    63	 * @p:		The private data of the driver core, only the driver core can
    64	 *		touch this.
    65	 * @lock_key:	Lock class key for use by the lock validator
    66	 * @need_parent_lock:	When probing or removing a device on this bus, the
    67	 *			device core should lock the device's parent.
    68	 *
    69	 * A bus is a channel between the processor and one or more devices. For the
    70	 * purposes of the device model, all devices are connected via a bus, even if
    71	 * it is an internal, virtual, "platform" bus. Buses can plug into each other.
    72	 * A USB controller is usually a PCI device, for example. The device model
    73	 * represents the actual connections between buses and the devices they control.
    74	 * A bus is represented by the bus_type structure. It contains the name, the
    75	 * default attributes, the bus' methods, PM operations, and the driver core's
    76	 * private data.
    77	 */
    78	struct bus_type {
    79		const char		*name;
    80		const char		*dev_name;
    81		struct device		*dev_root;
    82		const struct attribute_group **bus_groups;
    83		const struct attribute_group **dev_groups;
    84		const struct attribute_group **drv_groups;
    85	
    86		int (*match)(struct device *dev, struct device_driver *drv);
  > 87		int (*uevent)(struct device *dev, struct kobj_uevent_env *env);
    88		int (*probe)(struct device *dev);
    89		void (*sync_state)(struct device *dev);
    90		int (*remove)(struct device *dev);
    91		void (*shutdown)(struct device *dev);
    92	
    93		int (*online)(struct device *dev);
    94		int (*offline)(struct device *dev);
    95	
    96		int (*suspend)(struct device *dev, pm_message_t state);
    97		int (*resume)(struct device *dev);
    98	
    99		int (*num_vf)(struct device *dev);
   100	
   101		int (*dma_configure)(struct device *dev);
   102	
   103		const struct dev_pm_ops *pm;
   104	
   105		const struct iommu_ops *iommu_ops;
   106	
   107		struct subsys_private *p;
   108		struct lock_class_key lock_key;
   109	
   110		bool need_parent_lock;
   111	};
   112	
   113	extern int __must_check bus_register(struct bus_type *bus);
   114	
   115	extern void bus_unregister(struct bus_type *bus);
   116	
   117	extern int __must_check bus_rescan_devices(struct bus_type *bus);
   118	
   119	struct bus_attribute {
 > 120		struct attribute	attr;
   121		ssize_t (*show)(struct bus_type *bus, char *buf);
   122		ssize_t (*store)(struct bus_type *bus, const char *buf, size_t count);
   123	};
   124	
   125	#define BUS_ATTR_RW(_name) \
   126		struct bus_attribute bus_attr_##_name = __ATTR_RW(_name)
   127	#define BUS_ATTR_RO(_name) \
   128		struct bus_attribute bus_attr_##_name = __ATTR_RO(_name)
   129	#define BUS_ATTR_WO(_name) \
   130		struct bus_attribute bus_attr_##_name = __ATTR_WO(_name)
   131	
   132	extern int __must_check bus_create_file(struct bus_type *,
   133						struct bus_attribute *);
   134	extern void bus_remove_file(struct bus_type *, struct bus_attribute *);
   135	
   136	/* Generic device matching functions that all busses can use to match with */
   137	int device_match_name(struct device *dev, const void *name);
   138	int device_match_of_node(struct device *dev, const void *np);
   139	int device_match_fwnode(struct device *dev, const void *fwnode);
   140	int device_match_devt(struct device *dev, const void *pdevt);
   141	int device_match_acpi_dev(struct device *dev, const void *adev);
   142	int device_match_any(struct device *dev, const void *unused);
   143	
   144	/* iterator helpers for buses */
   145	struct subsys_dev_iter {
   146		struct klist_iter		ki;
   147		const struct device_type	*type;
   148	};
   149	void subsys_dev_iter_init(struct subsys_dev_iter *iter,
   150				 struct bus_type *subsys,
   151				 struct device *start,
   152				 const struct device_type *type);
   153	struct device *subsys_dev_iter_next(struct subsys_dev_iter *iter);
   154	void subsys_dev_iter_exit(struct subsys_dev_iter *iter);
   155	
   156	int bus_for_each_dev(struct bus_type *bus, struct device *start, void *data,
   157			     int (*fn)(struct device *dev, void *data));
   158	struct device *bus_find_device(struct bus_type *bus, struct device *start,
   159				       const void *data,
   160				       int (*match)(struct device *dev, const void *data));
   161	/**
   162	 * bus_find_device_by_name - device iterator for locating a particular device
   163	 * of a specific name.
   164	 * @bus: bus type
   165	 * @start: Device to begin with
   166	 * @name: name of the device to match
   167	 */
   168	static inline struct device *bus_find_device_by_name(struct bus_type *bus,
   169							     struct device *start,
   170							     const char *name)
   171	{
   172		return bus_find_device(bus, start, name, device_match_name);
   173	}
   174	
   175	/**
   176	 * bus_find_device_by_of_node : device iterator for locating a particular device
   177	 * matching the of_node.
   178	 * @bus: bus type
   179	 * @np: of_node of the device to match.
   180	 */
   181	static inline struct device *
 > 182	bus_find_device_by_of_node(struct bus_type *bus, const struct device_node *np)
   183	{
   184		return bus_find_device(bus, NULL, np, device_match_of_node);
   185	}
   186	

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

--iwcq2iblpeqeu3tg
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AA==

--iwcq2iblpeqeu3tg
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--iwcq2iblpeqeu3tg--
