Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E917ED421
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 Nov 2019 19:16:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD3338A60C;
	Sun,  3 Nov 2019 18:16:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MPMUC6Dju4q5; Sun,  3 Nov 2019 18:16:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6F46D8A5DC;
	Sun,  3 Nov 2019 18:16:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7B3C41BF5DD
 for <devel@linuxdriverproject.org>; Sun,  3 Nov 2019 18:16:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 750058A5D6
 for <devel@linuxdriverproject.org>; Sun,  3 Nov 2019 18:16:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gSxqNCXkLbDL for <devel@linuxdriverproject.org>;
 Sun,  3 Nov 2019 18:16:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C5C1B8A5D2
 for <devel@driverdev.osuosl.org>; Sun,  3 Nov 2019 18:16:44 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Nov 2019 10:16:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,264,1569308400"; 
 d="gz'50?scan'50,208,50";a="376126594"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 03 Nov 2019 10:16:42 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iRKQb-000Iea-Vz; Mon, 04 Nov 2019 02:16:41 +0800
Date: Mon, 4 Nov 2019 02:16:32 +0800
From: kbuild test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:device_h_splitup 34/35] drivers//base/devcon.c:161:40:
 error: passing argument 2 of 'bus_find_device_by_fwnode' from incompatible
 pointer type
Message-ID: <201911040229.HkA0HHhu%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="rvmx2l6lbaoiqyfi"
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


--rvmx2l6lbaoiqyfi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git device_h_splitup
head:   8ac09706c581716b3ca938773ad29e50854fa674
commit: bfe8e3fa1f0d3946158a6526aefccc5160b51cb9 [34/35] device.h: move 'struct bus' stuff out to device/bus.h
config: i386-tinyconfig (attached as .config)
compiler: gcc-7 (Debian 7.4.0-14) 7.4.0
reproduce:
        git checkout bfe8e3fa1f0d3946158a6526aefccc5160b51cb9
        # save the attached .config to linux build tree
        make ARCH=i386 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   In file included from include/linux/device.h:29:0,
                    from include/linux/node.h:18,
                    from include/linux/cpu.h:17,
                    from arch/x86//kernel/irq.c:5:
>> include/linux/device/bus.h:193:62: warning: 'struct fwnode_handle' declared inside parameter list will not be visible outside of this definition or declaration
    bus_find_device_by_fwnode(struct bus_type *bus, const struct fwnode_handle *fwnode)
                                                                 ^~~~~~~~~~~~~
--
   In file included from include/linux/device.h:29:0,
                    from drivers//base/devcon.c:9:
>> include/linux/device/bus.h:193:62: warning: 'struct fwnode_handle' declared inside parameter list will not be visible outside of this definition or declaration
    bus_find_device_by_fwnode(struct bus_type *bus, const struct fwnode_handle *fwnode)
                                                                 ^~~~~~~~~~~~~
   drivers//base/devcon.c: In function 'device_connection_fwnode_match':
>> drivers//base/devcon.c:161:40: error: passing argument 2 of 'bus_find_device_by_fwnode' from incompatible pointer type [-Werror=incompatible-pointer-types]
      dev = bus_find_device_by_fwnode(bus, con->fwnode);
                                           ^~~
   In file included from include/linux/device.h:29:0,
                    from drivers//base/devcon.c:9:
   include/linux/device/bus.h:193:1: note: expected 'const struct fwnode_handle *' but argument is of type 'struct fwnode_handle *'
    bus_find_device_by_fwnode(struct bus_type *bus, const struct fwnode_handle *fwnode)
    ^~~~~~~~~~~~~~~~~~~~~~~~~
   cc1: some warnings being treated as errors

vim +/bus_find_device_by_fwnode +161 drivers//base/devcon.c

f2d9b66d84f3ff Heikki Krogerus  2018-03-20   @9  #include <linux/device.h>
637e9e52b185e5 Heikki Krogerus  2019-02-13   10  #include <linux/property.h>
f2d9b66d84f3ff Heikki Krogerus  2018-03-20   11  
f2d9b66d84f3ff Heikki Krogerus  2018-03-20   12  static DEFINE_MUTEX(devcon_lock);
f2d9b66d84f3ff Heikki Krogerus  2018-03-20   13  static LIST_HEAD(devcon_list);
f2d9b66d84f3ff Heikki Krogerus  2018-03-20   14  
637e9e52b185e5 Heikki Krogerus  2019-02-13   15  static void *
637e9e52b185e5 Heikki Krogerus  2019-02-13   16  fwnode_graph_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
637e9e52b185e5 Heikki Krogerus  2019-02-13   17  			  void *data, devcon_match_fn_t match)
637e9e52b185e5 Heikki Krogerus  2019-02-13   18  {
637e9e52b185e5 Heikki Krogerus  2019-02-13   19  	struct device_connection con = { .id = con_id };
637e9e52b185e5 Heikki Krogerus  2019-02-13   20  	struct fwnode_handle *ep;
637e9e52b185e5 Heikki Krogerus  2019-02-13   21  	void *ret;
637e9e52b185e5 Heikki Krogerus  2019-02-13   22  
637e9e52b185e5 Heikki Krogerus  2019-02-13   23  	fwnode_graph_for_each_endpoint(fwnode, ep) {
637e9e52b185e5 Heikki Krogerus  2019-02-13   24  		con.fwnode = fwnode_graph_get_remote_port_parent(ep);
637e9e52b185e5 Heikki Krogerus  2019-02-13   25  		if (!fwnode_device_is_available(con.fwnode))
637e9e52b185e5 Heikki Krogerus  2019-02-13   26  			continue;
637e9e52b185e5 Heikki Krogerus  2019-02-13   27  
637e9e52b185e5 Heikki Krogerus  2019-02-13   28  		ret = match(&con, -1, data);
637e9e52b185e5 Heikki Krogerus  2019-02-13   29  		fwnode_handle_put(con.fwnode);
637e9e52b185e5 Heikki Krogerus  2019-02-13   30  		if (ret) {
637e9e52b185e5 Heikki Krogerus  2019-02-13   31  			fwnode_handle_put(ep);
637e9e52b185e5 Heikki Krogerus  2019-02-13   32  			return ret;
637e9e52b185e5 Heikki Krogerus  2019-02-13   33  		}
637e9e52b185e5 Heikki Krogerus  2019-02-13   34  	}
637e9e52b185e5 Heikki Krogerus  2019-02-13   35  	return NULL;
637e9e52b185e5 Heikki Krogerus  2019-02-13   36  }
637e9e52b185e5 Heikki Krogerus  2019-02-13   37  
fde777791eb83f Heikki Krogerus  2019-05-31   38  static void *
fde777791eb83f Heikki Krogerus  2019-05-31   39  fwnode_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
fde777791eb83f Heikki Krogerus  2019-05-31   40  		    void *data, devcon_match_fn_t match)
fde777791eb83f Heikki Krogerus  2019-05-31   41  {
fde777791eb83f Heikki Krogerus  2019-05-31   42  	struct device_connection con = { };
fde777791eb83f Heikki Krogerus  2019-05-31   43  	void *ret;
fde777791eb83f Heikki Krogerus  2019-05-31   44  	int i;
fde777791eb83f Heikki Krogerus  2019-05-31   45  
fde777791eb83f Heikki Krogerus  2019-05-31   46  	for (i = 0; ; i++) {
fde777791eb83f Heikki Krogerus  2019-05-31   47  		con.fwnode = fwnode_find_reference(fwnode, con_id, i);
fde777791eb83f Heikki Krogerus  2019-05-31   48  		if (IS_ERR(con.fwnode))
fde777791eb83f Heikki Krogerus  2019-05-31   49  			break;
fde777791eb83f Heikki Krogerus  2019-05-31   50  
fde777791eb83f Heikki Krogerus  2019-05-31   51  		ret = match(&con, -1, data);
fde777791eb83f Heikki Krogerus  2019-05-31   52  		fwnode_handle_put(con.fwnode);
fde777791eb83f Heikki Krogerus  2019-05-31   53  		if (ret)
fde777791eb83f Heikki Krogerus  2019-05-31   54  			return ret;
fde777791eb83f Heikki Krogerus  2019-05-31   55  	}
fde777791eb83f Heikki Krogerus  2019-05-31   56  
fde777791eb83f Heikki Krogerus  2019-05-31   57  	return NULL;
fde777791eb83f Heikki Krogerus  2019-05-31   58  }
fde777791eb83f Heikki Krogerus  2019-05-31   59  
44493062abc38e Heikki Krogerus  2019-08-29   60  /**
44493062abc38e Heikki Krogerus  2019-08-29   61   * fwnode_connection_find_match - Find connection from a device node
44493062abc38e Heikki Krogerus  2019-08-29   62   * @fwnode: Device node with the connection
44493062abc38e Heikki Krogerus  2019-08-29   63   * @con_id: Identifier for the connection
44493062abc38e Heikki Krogerus  2019-08-29   64   * @data: Data for the match function
44493062abc38e Heikki Krogerus  2019-08-29   65   * @match: Function to check and convert the connection description
44493062abc38e Heikki Krogerus  2019-08-29   66   *
44493062abc38e Heikki Krogerus  2019-08-29   67   * Find a connection with unique identifier @con_id between @fwnode and another
44493062abc38e Heikki Krogerus  2019-08-29   68   * device node. @match will be used to convert the connection description to
44493062abc38e Heikki Krogerus  2019-08-29   69   * data the caller is expecting to be returned.
44493062abc38e Heikki Krogerus  2019-08-29   70   */
44493062abc38e Heikki Krogerus  2019-08-29   71  void *fwnode_connection_find_match(struct fwnode_handle *fwnode,
44493062abc38e Heikki Krogerus  2019-08-29   72  				   const char *con_id, void *data,
44493062abc38e Heikki Krogerus  2019-08-29   73  				   devcon_match_fn_t match)
44493062abc38e Heikki Krogerus  2019-08-29   74  {
44493062abc38e Heikki Krogerus  2019-08-29   75  	void *ret;
44493062abc38e Heikki Krogerus  2019-08-29   76  
44493062abc38e Heikki Krogerus  2019-08-29   77  	if (!fwnode || !match)
44493062abc38e Heikki Krogerus  2019-08-29   78  		return NULL;
44493062abc38e Heikki Krogerus  2019-08-29   79  
44493062abc38e Heikki Krogerus  2019-08-29   80  	ret = fwnode_graph_devcon_match(fwnode, con_id, data, match);
44493062abc38e Heikki Krogerus  2019-08-29   81  	if (ret)
44493062abc38e Heikki Krogerus  2019-08-29   82  		return ret;
44493062abc38e Heikki Krogerus  2019-08-29   83  
44493062abc38e Heikki Krogerus  2019-08-29   84  	return fwnode_devcon_match(fwnode, con_id, data, match);
44493062abc38e Heikki Krogerus  2019-08-29   85  }
44493062abc38e Heikki Krogerus  2019-08-29   86  EXPORT_SYMBOL_GPL(fwnode_connection_find_match);
44493062abc38e Heikki Krogerus  2019-08-29   87  
f2d9b66d84f3ff Heikki Krogerus  2018-03-20   88  /**
f2d9b66d84f3ff Heikki Krogerus  2018-03-20   89   * device_connection_find_match - Find physical connection to a device
f2d9b66d84f3ff Heikki Krogerus  2018-03-20   90   * @dev: Device with the connection
f2d9b66d84f3ff Heikki Krogerus  2018-03-20   91   * @con_id: Identifier for the connection
f2d9b66d84f3ff Heikki Krogerus  2018-03-20   92   * @data: Data for the match function
f2d9b66d84f3ff Heikki Krogerus  2018-03-20   93   * @match: Function to check and convert the connection description
f2d9b66d84f3ff Heikki Krogerus  2018-03-20   94   *
f2d9b66d84f3ff Heikki Krogerus  2018-03-20   95   * Find a connection with unique identifier @con_id between @dev and another
f2d9b66d84f3ff Heikki Krogerus  2018-03-20   96   * device. @match will be used to convert the connection description to data the
f2d9b66d84f3ff Heikki Krogerus  2018-03-20   97   * caller is expecting to be returned.
f2d9b66d84f3ff Heikki Krogerus  2018-03-20   98   */
f2d9b66d84f3ff Heikki Krogerus  2018-03-20   99  void *device_connection_find_match(struct device *dev, const char *con_id,
637e9e52b185e5 Heikki Krogerus  2019-02-13  100  				   void *data, devcon_match_fn_t match)
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  101  {
637e9e52b185e5 Heikki Krogerus  2019-02-13  102  	struct fwnode_handle *fwnode = dev_fwnode(dev);
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  103  	const char *devname = dev_name(dev);
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  104  	struct device_connection *con;
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  105  	void *ret = NULL;
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  106  	int ep;
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  107  
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  108  	if (!match)
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  109  		return NULL;
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  110  
44493062abc38e Heikki Krogerus  2019-08-29  111  	ret = fwnode_connection_find_match(fwnode, con_id, data, match);
637e9e52b185e5 Heikki Krogerus  2019-02-13  112  	if (ret)
637e9e52b185e5 Heikki Krogerus  2019-02-13  113  		return ret;
fde777791eb83f Heikki Krogerus  2019-05-31  114  
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  115  	mutex_lock(&devcon_lock);
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  116  
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  117  	list_for_each_entry(con, &devcon_list, list) {
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  118  		ep = match_string(con->endpoint, 2, devname);
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  119  		if (ep < 0)
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  120  			continue;
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  121  
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  122  		if (con_id && strcmp(con->id, con_id))
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  123  			continue;
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  124  
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  125  		ret = match(con, !ep, data);
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  126  		if (ret)
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  127  			break;
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  128  	}
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  129  
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  130  	mutex_unlock(&devcon_lock);
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  131  
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  132  	return ret;
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  133  }
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  134  EXPORT_SYMBOL_GPL(device_connection_find_match);
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  135  
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  136  extern struct bus_type platform_bus_type;
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  137  extern struct bus_type pci_bus_type;
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  138  extern struct bus_type i2c_bus_type;
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  139  extern struct bus_type spi_bus_type;
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  140  
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  141  static struct bus_type *generic_match_buses[] = {
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  142  	&platform_bus_type,
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  143  #ifdef CONFIG_PCI
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  144  	&pci_bus_type,
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  145  #endif
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  146  #ifdef CONFIG_I2C
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  147  	&i2c_bus_type,
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  148  #endif
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  149  #ifdef CONFIG_SPI_MASTER
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  150  	&spi_bus_type,
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  151  #endif
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  152  	NULL,
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  153  };
f2d9b66d84f3ff Heikki Krogerus  2018-03-20  154  
80e04837a40f6f Heikki Krogerus  2019-02-13  155  static void *device_connection_fwnode_match(struct device_connection *con)
80e04837a40f6f Heikki Krogerus  2019-02-13  156  {
80e04837a40f6f Heikki Krogerus  2019-02-13  157  	struct bus_type *bus;
80e04837a40f6f Heikki Krogerus  2019-02-13  158  	struct device *dev;
80e04837a40f6f Heikki Krogerus  2019-02-13  159  
80e04837a40f6f Heikki Krogerus  2019-02-13  160  	for (bus = generic_match_buses[0]; bus; bus++) {
67843bbaf36eb0 Suzuki K Poulose 2019-07-23 @161  		dev = bus_find_device_by_fwnode(bus, con->fwnode);
80e04837a40f6f Heikki Krogerus  2019-02-13  162  		if (dev && !strncmp(dev_name(dev), con->id, strlen(con->id)))
80e04837a40f6f Heikki Krogerus  2019-02-13  163  			return dev;
80e04837a40f6f Heikki Krogerus  2019-02-13  164  
80e04837a40f6f Heikki Krogerus  2019-02-13  165  		put_device(dev);
80e04837a40f6f Heikki Krogerus  2019-02-13  166  	}
80e04837a40f6f Heikki Krogerus  2019-02-13  167  	return NULL;
80e04837a40f6f Heikki Krogerus  2019-02-13  168  }
80e04837a40f6f Heikki Krogerus  2019-02-13  169  

:::::: The code at line 161 was first introduced by commit
:::::: 67843bbaf36eb087714f40e783ee78e99e9e4b86 drivers: Introduce device lookup variants by fwnode

:::::: TO: Suzuki K Poulose <suzuki.poulose@arm.com>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--rvmx2l6lbaoiqyfi
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
zdEIqnJn6AjVTo+tExwo/AC2vYUhDWgAAA==

--rvmx2l6lbaoiqyfi
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--rvmx2l6lbaoiqyfi--
