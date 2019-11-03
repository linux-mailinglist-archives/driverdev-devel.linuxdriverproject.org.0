Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4F2ED437
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 Nov 2019 19:48:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EA6F0895BE;
	Sun,  3 Nov 2019 18:48:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KPk-SiZJvMsd; Sun,  3 Nov 2019 18:48:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CD07F895C6;
	Sun,  3 Nov 2019 18:48:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2D80C1BF377
 for <devel@linuxdriverproject.org>; Sun,  3 Nov 2019 18:48:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 298798A73A
 for <devel@linuxdriverproject.org>; Sun,  3 Nov 2019 18:48:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aGaBkGbp-ixP for <devel@linuxdriverproject.org>;
 Sun,  3 Nov 2019 18:48:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1CD4089FF5
 for <devel@driverdev.osuosl.org>; Sun,  3 Nov 2019 18:48:48 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Nov 2019 10:48:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,264,1569308400"; 
 d="gz'50?scan'50,208,50";a="204407402"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 03 Nov 2019 10:48:44 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iRKvb-000D2C-FU; Mon, 04 Nov 2019 02:48:43 +0800
Date: Mon, 4 Nov 2019 02:48:38 +0800
From: kbuild test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:device_h_splitup 35/35]
 drivers/usb/roles/class.c:97:49: error: passing argument 2 of
 'class_find_device_by_fwnode' from incompatible pointer type
Message-ID: <201911040234.ZtjGihZE%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="me5wv4egnsr35cqs"
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


--me5wv4egnsr35cqs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git device_h_splitup
head:   8ac09706c581716b3ca938773ad29e50854fa674
commit: 8ac09706c581716b3ca938773ad29e50854fa674 [35/35] device.h: move 'struct class' stuff out to device/class.h
config: x86_64-randconfig-b001-201944 (attached as .config)
compiler: gcc-7 (Debian 7.4.0-14) 7.4.0
reproduce:
        git checkout 8ac09706c581716b3ca938773ad29e50854fa674
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from include/linux/device.h:29:0,
                    from include/linux/usb/role.h:6,
                    from drivers/usb/roles/class.c:10:
   include/linux/device/bus.h:193:62: warning: 'struct fwnode_handle' declared inside parameter list will not be visible outside of this definition or declaration
    bus_find_device_by_fwnode(struct bus_type *bus, const struct fwnode_handle *fwnode)
                                                                 ^~~~~~~~~~~~~
   In file included from include/linux/device.h:30:0,
                    from include/linux/usb/role.h:6,
                    from drivers/usb/roles/class.c:10:
   include/linux/device/class.h:152:21: warning: 'struct fwnode_handle' declared inside parameter list will not be visible outside of this definition or declaration
           const struct fwnode_handle *fwnode)
                        ^~~~~~~~~~~~~
   drivers/usb/roles/class.c: In function 'usb_role_switch_match':
>> drivers/usb/roles/class.c:97:49: error: passing argument 2 of 'class_find_device_by_fwnode' from incompatible pointer type [-Werror=incompatible-pointer-types]
      dev = class_find_device_by_fwnode(role_class, con->fwnode);
                                                    ^~~
   In file included from include/linux/device.h:30:0,
                    from include/linux/usb/role.h:6,
                    from drivers/usb/roles/class.c:10:
   include/linux/device/class.h:151:1: note: expected 'const struct fwnode_handle *' but argument is of type 'struct fwnode_handle *'
    class_find_device_by_fwnode(struct class *class,
    ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/usb/roles/class.c: In function 'usb_role_switch_is_parent':
   drivers/usb/roles/class.c:114:48: error: passing argument 2 of 'class_find_device_by_fwnode' from incompatible pointer type [-Werror=incompatible-pointer-types]
     dev = class_find_device_by_fwnode(role_class, parent);
                                                   ^~~~~~
   In file included from include/linux/device.h:30:0,
                    from include/linux/usb/role.h:6,
                    from drivers/usb/roles/class.c:10:
   include/linux/device/class.h:151:1: note: expected 'const struct fwnode_handle *' but argument is of type 'struct fwnode_handle *'
    class_find_device_by_fwnode(struct class *class,
    ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   cc1: some warnings being treated as errors
--
   In file included from include/linux/device.h:29:0,
                    from drivers/usb/typec/class.c:9:
   include/linux/device/bus.h:193:62: warning: 'struct fwnode_handle' declared inside parameter list will not be visible outside of this definition or declaration
    bus_find_device_by_fwnode(struct bus_type *bus, const struct fwnode_handle *fwnode)
                                                                 ^~~~~~~~~~~~~
   In file included from include/linux/device.h:30:0,
                    from drivers/usb/typec/class.c:9:
   include/linux/device/class.h:152:21: warning: 'struct fwnode_handle' declared inside parameter list will not be visible outside of this definition or declaration
           const struct fwnode_handle *fwnode)
                        ^~~~~~~~~~~~~
   drivers/usb/typec/class.c: In function 'typec_port_match':
>> drivers/usb/typec/class.c:217:51: error: passing argument 2 of 'class_find_device_by_fwnode' from incompatible pointer type [-Werror=incompatible-pointer-types]
      return class_find_device_by_fwnode(typec_class, con->fwnode);
                                                      ^~~
   In file included from include/linux/device.h:30:0,
                    from drivers/usb/typec/class.c:9:
   include/linux/device/class.h:151:1: note: expected 'const struct fwnode_handle *' but argument is of type 'struct fwnode_handle *'
    class_find_device_by_fwnode(struct class *class,
    ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   cc1: some warnings being treated as errors

vim +/class_find_device_by_fwnode +97 drivers/usb/roles/class.c

fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20  @10  #include <linux/usb/role.h>
ec69e9533c4879 drivers/usb/roles/class.c  Heikki Krogerus  2019-02-13   11  #include <linux/property.h>
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   12  #include <linux/device.h>
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   13  #include <linux/module.h>
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   14  #include <linux/mutex.h>
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   15  #include <linux/slab.h>
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   16  
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   17  static struct class *role_class;
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   18  
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   19  struct usb_role_switch {
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   20  	struct device dev;
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   21  	struct mutex lock; /* device lock*/
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   22  	enum usb_role role;
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   23  
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   24  	/* From descriptor */
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   25  	struct device *usb2_port;
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   26  	struct device *usb3_port;
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   27  	struct device *udc;
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   28  	usb_role_switch_set_t set;
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   29  	usb_role_switch_get_t get;
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   30  	bool allow_userspace_control;
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   31  };
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   32  
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   33  #define to_role_switch(d)	container_of(d, struct usb_role_switch, dev)
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   34  
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   35  /**
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   36   * usb_role_switch_set_role - Set USB role for a switch
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   37   * @sw: USB role switch
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   38   * @role: USB role to be switched to
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   39   *
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   40   * Set USB role @role for @sw.
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   41   */
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   42  int usb_role_switch_set_role(struct usb_role_switch *sw, enum usb_role role)
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   43  {
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   44  	int ret;
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   45  
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   46  	if (IS_ERR_OR_NULL(sw))
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   47  		return 0;
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   48  
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   49  	mutex_lock(&sw->lock);
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   50  
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   51  	ret = sw->set(sw->dev.parent, role);
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   52  	if (!ret)
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   53  		sw->role = role;
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   54  
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   55  	mutex_unlock(&sw->lock);
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   56  
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   57  	return ret;
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   58  }
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   59  EXPORT_SYMBOL_GPL(usb_role_switch_set_role);
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   60  
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   61  /**
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   62   * usb_role_switch_get_role - Get the USB role for a switch
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   63   * @sw: USB role switch
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   64   *
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   65   * Depending on the role-switch-driver this function returns either a cached
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   66   * value of the last set role, or reads back the actual value from the hardware.
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   67   */
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   68  enum usb_role usb_role_switch_get_role(struct usb_role_switch *sw)
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   69  {
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   70  	enum usb_role role;
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   71  
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   72  	if (IS_ERR_OR_NULL(sw))
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   73  		return USB_ROLE_NONE;
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   74  
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   75  	mutex_lock(&sw->lock);
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   76  
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   77  	if (sw->get)
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   78  		role = sw->get(sw->dev.parent);
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   79  	else
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   80  		role = sw->role;
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   81  
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   82  	mutex_unlock(&sw->lock);
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   83  
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   84  	return role;
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   85  }
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   86  EXPORT_SYMBOL_GPL(usb_role_switch_get_role);
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   87  
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   88  static void *usb_role_switch_match(struct device_connection *con, int ep,
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   89  				   void *data)
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   90  {
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   91  	struct device *dev;
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20   92  
ec69e9533c4879 drivers/usb/roles/class.c  Heikki Krogerus  2019-02-13   93  	if (con->fwnode) {
fde777791eb83f drivers/usb/roles/class.c  Heikki Krogerus  2019-05-31   94  		if (con->id && !fwnode_property_present(con->fwnode, con->id))
ec69e9533c4879 drivers/usb/roles/class.c  Heikki Krogerus  2019-02-13   95  			return NULL;
ec69e9533c4879 drivers/usb/roles/class.c  Heikki Krogerus  2019-02-13   96  
67843bbaf36eb0 drivers/usb/roles/class.c  Suzuki K Poulose 2019-07-23  @97  		dev = class_find_device_by_fwnode(role_class, con->fwnode);
ec69e9533c4879 drivers/usb/roles/class.c  Heikki Krogerus  2019-02-13   98  	} else {
6cda08a20dbde4 drivers/usb/roles/class.c  Suzuki K Poulose 2019-07-23   99  		dev = class_find_device_by_name(role_class, con->endpoint[ep]);
ec69e9533c4879 drivers/usb/roles/class.c  Heikki Krogerus  2019-02-13  100  	}
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20  101  
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20  102  	return dev ? to_role_switch(dev) : ERR_PTR(-EPROBE_DEFER);
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20  103  }
fde0aa6c175a4d drivers/usb/common/roles.c Heikki Krogerus  2018-03-20  104  

:::::: The code at line 97 was first introduced by commit
:::::: 67843bbaf36eb087714f40e783ee78e99e9e4b86 drivers: Introduce device lookup variants by fwnode

:::::: TO: Suzuki K Poulose <suzuki.poulose@arm.com>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--me5wv4egnsr35cqs
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--me5wv4egnsr35cqs
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--me5wv4egnsr35cqs--
