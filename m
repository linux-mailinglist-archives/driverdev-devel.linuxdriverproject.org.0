Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFA0F7755
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Nov 2019 16:05:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A047E22056;
	Mon, 11 Nov 2019 15:05:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id riYMg4KQviXn; Mon, 11 Nov 2019 15:05:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2A34220431;
	Mon, 11 Nov 2019 15:05:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 90ACB1BF3D9
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 15:05:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8844984E7C
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 15:05:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F5rHIeZDLVvY for <devel@linuxdriverproject.org>;
 Mon, 11 Nov 2019 15:05:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AB76D84D0F
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 15:05:48 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 07:05:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,293,1569308400"; 
 d="gz'50?scan'50,208,50";a="202076372"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 11 Nov 2019 07:05:45 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iUBGC-00048q-NL; Mon, 11 Nov 2019 23:05:44 +0800
Date: Mon, 11 Nov 2019 23:04:56 +0800
From: kbuild test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:device_h_splitup 56/57]
 include/linux/device/bus.h:96:37: error: unknown type name 'pm_message_t'
Message-ID: <201911112355.Lgvnqp4P%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ort3q6x7mvuckabd"
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


--ort3q6x7mvuckabd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git device_h_splitup
head:   f9582e3b228292a3c646866487a437e075fc0ee5
commit: 43ed4c24a977067ac76d7b6051829934fb59ae2f [56/57] device.h: move 'struct bus' stuff out to device/bus.h
config: x86_64-randconfig-s0-201945 (attached as .config)
compiler: gcc-7 (Debian 7.4.0-14) 7.4.0
reproduce:
        git checkout 43ed4c24a977067ac76d7b6051829934fb59ae2f
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from <command-line>:0:0:
   include/linux/device/bus.h:87:43: warning: 'struct kobj_uevent_env' declared inside parameter list will not be visible outside of this definition or declaration
     int (*uevent)(struct device *dev, struct kobj_uevent_env *env);
                                              ^~~~~~~~~~~~~~~
>> include/linux/device/bus.h:96:37: error: unknown type name 'pm_message_t'
     int (*suspend)(struct device *dev, pm_message_t state);
                                        ^~~~~~~~~~~~
>> include/linux/device/bus.h:108:24: error: field 'lock_key' has incomplete type
     struct lock_class_key lock_key;
                           ^~~~~~~~
>> include/linux/device/bus.h:110:2: error: unknown type name 'bool'
     bool need_parent_lock;
     ^~~~
>> include/linux/device/bus.h:120:19: error: field 'attr' has incomplete type
     struct attribute attr;
                      ^~~~
>> include/linux/device/bus.h:121:2: error: expected specifier-qualifier-list before 'ssize_t'
     ssize_t (*show)(struct bus_type *bus, char *buf);
     ^~~~~~~
>> include/linux/device/bus.h:146:21: error: field 'ki' has incomplete type
     struct klist_iter  ki;
                        ^~
   include/linux/device/bus.h:182:63: warning: 'struct device_node' declared inside parameter list will not be visible outside of this definition or declaration
    bus_find_device_by_of_node(struct bus_type *bus, const struct device_node *np)
                                                                  ^~~~~~~~~~~
   include/linux/device/bus.h: In function 'bus_find_device_by_of_node':
>> include/linux/device/bus.h:184:30: error: 'NULL' undeclared (first use in this function)
     return bus_find_device(bus, NULL, np, device_match_of_node);
                                 ^~~~
   include/linux/device/bus.h:184:30: note: each undeclared identifier is reported only once for each function it appears in
   include/linux/device/bus.h: In function 'bus_find_device_by_fwnode':
   include/linux/device/bus.h:196:30: error: 'NULL' undeclared (first use in this function)
     return bus_find_device(bus, NULL, fwnode, device_match_fwnode);
                                 ^~~~
   include/linux/device/bus.h: At top level:
>> include/linux/device/bus.h:206:12: error: unknown type name 'dev_t'
               dev_t devt)
               ^~~~~
   include/linux/device/bus.h: In function 'bus_find_next_device':
   include/linux/device/bus.h:220:35: error: 'NULL' undeclared (first use in this function)
     return bus_find_device(bus, cur, NULL, device_match_any);
                                      ^~~~
   include/linux/device/bus.h: In function 'bus_find_device_by_acpi_dev':
   include/linux/device/bus.h:235:30: error: 'NULL' undeclared (first use in this function)
     return bus_find_device(bus, NULL, adev, device_match_acpi_dev);
                                 ^~~~

vim +/pm_message_t +96 include/linux/device/bus.h

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
  > 96		int (*suspend)(struct device *dev, pm_message_t state);
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
 > 108		struct lock_class_key lock_key;
   109	
 > 110		bool need_parent_lock;
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
 > 121		ssize_t (*show)(struct bus_type *bus, char *buf);
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
 > 146		struct klist_iter		ki;
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
   182	bus_find_device_by_of_node(struct bus_type *bus, const struct device_node *np)
   183	{
 > 184		return bus_find_device(bus, NULL, np, device_match_of_node);
   185	}
   186	
   187	/**
   188	 * bus_find_device_by_fwnode : device iterator for locating a particular device
   189	 * matching the fwnode.
   190	 * @bus: bus type
   191	 * @fwnode: fwnode of the device to match.
   192	 */
   193	static inline struct device *
   194	bus_find_device_by_fwnode(struct bus_type *bus, const struct fwnode_handle *fwnode)
   195	{
   196		return bus_find_device(bus, NULL, fwnode, device_match_fwnode);
   197	}
   198	
   199	/**
   200	 * bus_find_device_by_devt : device iterator for locating a particular device
   201	 * matching the device type.
   202	 * @bus: bus type
   203	 * @devt: device type of the device to match.
   204	 */
   205	static inline struct device *bus_find_device_by_devt(struct bus_type *bus,
 > 206							     dev_t devt)
   207	{
   208		return bus_find_device(bus, NULL, &devt, device_match_devt);
   209	}
   210	

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

--ort3q6x7mvuckabd
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--ort3q6x7mvuckabd
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--ort3q6x7mvuckabd--
