Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0299626D922
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 12:34:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 94889875FA;
	Thu, 17 Sep 2020 10:34:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UmTp4M2MmO54; Thu, 17 Sep 2020 10:34:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 88C9D875DD;
	Thu, 17 Sep 2020 10:33:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 807B01BF387
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 10:33:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 753E2203C9
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 10:33:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WBaART597sXP for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 10:33:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 95B9820033
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 10:33:53 +0000 (UTC)
IronPort-SDR: S0erId5V7hTdwOqAMViFqDGmznf6wpKSBdTG56lHEjJh1h9OHOD2ioJklzG0GLpxTH3s0rO9I3
 olFGXEuP0hAg==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="221216265"
X-IronPort-AV: E=Sophos;i="5.76,436,1592895600"; d="scan'208";a="221216265"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 03:33:50 -0700
IronPort-SDR: iSi8QkdBiq0Q6E2UWKNtgprK3pOvH8jVSDQvwLerUK5yI9UMPTgKxQfIwvx5YfKuqlbHDTY3my
 REd0Do/If8vA==
X-IronPort-AV: E=Sophos;i="5.76,436,1592895600"; d="scan'208";a="332097046"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 03:33:46 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id E052E20621; Thu, 17 Sep 2020 13:33:43 +0300 (EEST)
Date: Thu, 17 Sep 2020 13:33:43 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Daniel Scally <djrscally@gmail.com>
Subject: Re: [RFC PATCH] Add bridge driver to connect sensors to CIO2 device
 via software nodes on ACPI platforms
Message-ID: <20200917103343.GW26842@paasikivi.fi.intel.com>
References: <20200916213618.8003-1-djrscally@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200916213618.8003-1-djrscally@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, robh@kernel.org,
 andriy.shevchenko@linux.intel.com, jorhand@linux.microsoft.com,
 linux-media@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, kieran.bingham@ideasonboard.com,
 kitakar@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 davem@davemloft.net, tian.shu.qiu@intel.com, yong.zhi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Daniel,

Thank you for the patch.

Is this all that it takes to add support for some machines shipped with
Windows? The ones I know require PMIC control done in software (not even
sensors are accessible without that).

One possibility would be to put this to platform code. That would
effectively also require it's compiled to the kernel (yuck).

How about just squashing this to the CIO2 driver instead (but still as a
separate file)? It's not exactly pretty, no, but it could allow this being
a module and not enlarge everyone's kernel, and the initialisation would at
the same time take place before the rest of what the CIO2 driver does in
probe.

I think you should still check whether CIO2 has graph endpoints before
proceeding with parsing SSDB buffer or looking up random-looking devices.

Cc Andy, too.

On Wed, Sep 16, 2020 at 10:36:18PM +0100, Daniel Scally wrote:
> Currently on ACPI platforms, sensors that are intended to be connected to
> a CIO2 device for use with the ipu3-cio2 driver lack the necessary
> connection information in firmware. This patch adds a module to parse the
> connection properties from the SSDB buffer in DSDT and build the connection
> using software nodes.
> 
> The ipu3-cio2 driver itself is modified to insert the cio2-bridge module
> after all sensors that have created a device link between themselves and
> the CIO2 have probed. Sensors wishing to use this bridge will need to add
> a device link between themselves and the CIO2 device as part of their own
> .probe() call.
> 
> Suggested-by: Jordan Hand <jorhand@linux.microsoft.com>
> 
> Signed-off-by: Daniel Scally <djrscally@gmail.com>
> ---
> This module's born out of efforts by the linux-surface github community
> to get functioning webcams on Microsoft Surface and similar platforms. it
> is dependent on this patch (which implements the software node graph family
> of functions):
> 
> https://lore.kernel.org/linux-media/20200915232827.3416-1-djrscally@gmail.com/
> 
> I wanted to raise this as an RFC as although I don't think it's ready for
> integration it has some things that I'd like feedback on, in particular the
> method I chose to make the module be auto-inserted. A more ideal method would
> have been to have the driver be an ACPI driver for the INT343E device, but each

What do you think this device does represent? Devices whose status is
always zero may exist in the table even if they would not be actually
present.

CIO2 is a PCI device and it has no ACPI (or PNP) ID, or at least should not
have one.

> of the the devices we've tested this on that dev has status 0 and so the module
> won't bind to it. The device links method seems a little clunky, but does work,
> and I think I have done the conditional processing correctly so that ipu3-cio2
> continues to work on non-ACPI platforms.

I don't think anyone uses ipu3-cio2 driver on non-ACPI platforms. It really
does require ACPI.

> 
>  MAINTAINERS                              |   6 +
>  drivers/media/pci/intel/ipu3/ipu3-cio2.c |  67 +++-
>  drivers/staging/media/ipu3/Kconfig       |  15 +
>  drivers/staging/media/ipu3/Makefile      |   1 +
>  drivers/staging/media/ipu3/cio2-bridge.c | 448 +++++++++++++++++++++++
>  5 files changed, 534 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/staging/media/ipu3/cio2-bridge.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index b5cfab015bd6..55b0b9888bc0 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -9152,6 +9152,12 @@ S:	Maintained
>  W:	http://www.adaptec.com/
>  F:	drivers/scsi/ips*
>  
> +IPU3 CIO2 Bridge Driver
> +M:	Daniel Scally <djrscally@gmail.com>
> +L:	linux-media@vger.kernel.org
> +S:	Maintained
> +F:	drivers/staging/media/ipu3/cio2-bridge.c
> +
>  IPVS
>  M:	Wensong Zhang <wensong@linux-vs.org>
>  M:	Simon Horman <horms@verge.net.au>
> diff --git a/drivers/media/pci/intel/ipu3/ipu3-cio2.c b/drivers/media/pci/intel/ipu3/ipu3-cio2.c
> index 92f5eadf2c99..fd941d2c7581 100644
> --- a/drivers/media/pci/intel/ipu3/ipu3-cio2.c
> +++ b/drivers/media/pci/intel/ipu3/ipu3-cio2.c
> @@ -1719,6 +1719,59 @@ static void cio2_queues_exit(struct cio2_device *cio2)
>  		cio2_queue_exit(cio2, &cio2->queue[i]);
>  }
>  
> +static int cio2_probe_can_progress(struct pci_dev *pci_dev)
> +{
> +	void *sensor;
> +
> +	/*
> +	 * On ACPI platforms, we need to probe _after_ sensors wishing to connect
> +	 * to cio2 have added a device link. If there are no consumers yet, then
> +	 * we need to defer. The .sync_state() callback will then be called after
> +	 * all linked sensors have probed
> +	 */
> +
> +	if (IS_ENABLED(CONFIG_ACPI)) {
> +		sensor = (struct device *)list_first_entry_or_null(
> +								&pci_dev->dev.links.consumers,
> +								struct dev_links_info,
> +								consumers);

Please wrap so it's under 80.

> +
> +		if (!sensor)
> +			return -EPROBE_DEFER;
> +	}
> +
> +	return 0;
> +}
> +
> +void cio2_sync_state(struct device *dev)
> +{
> +	struct cio2_device *cio2;
> +	int ret = 0;
> +
> +	if (IS_ENABLED(CONFIG_ACPI)) {
> +		cio2 = dev_get_drvdata(dev);
> +
> +		if (!cio2) {
> +			dev_err(dev, "Failed to retrieve driver data\n");
> +			return;
> +		}
> +
> +		/* insert the bridge driver to connect sensors via software nodes */
> +		ret = request_module("cio2-bridge");
> +
> +		if (ret)
> +			dev_err(dev, "Failed to insert cio2-bridge\n");
> +
> +		ret = cio2_parse_firmware(cio2);
> +
> +		if (ret) {
> +			v4l2_async_notifier_unregister(&cio2->notifier);
> +			v4l2_async_notifier_cleanup(&cio2->notifier);
> +			cio2_queues_exit(cio2);
> +		}
> +	}
> +}
> +
>  /**************** PCI interface ****************/
>  
>  static int cio2_pci_config_setup(struct pci_dev *dev)
> @@ -1746,6 +1799,11 @@ static int cio2_pci_probe(struct pci_dev *pci_dev,
>  	void __iomem *const *iomap;
>  	int r;
>  
> +	r = cio2_probe_can_progress(pci_dev);
> +
> +	if (r)
> +		return -EPROBE_DEFER;
> +
>  	cio2 = devm_kzalloc(&pci_dev->dev, sizeof(*cio2), GFP_KERNEL);
>  	if (!cio2)
>  		return -ENOMEM;
> @@ -1821,9 +1879,11 @@ static int cio2_pci_probe(struct pci_dev *pci_dev,
>  	v4l2_async_notifier_init(&cio2->notifier);
>  
>  	/* Register notifier for subdevices we care */
> -	r = cio2_parse_firmware(cio2);
> -	if (r)
> -		goto fail_clean_notifier;
> +	if (!IS_ENABLED(CONFIG_ACPI)) {
> +		r = cio2_parse_firmware(cio2);
> +		if (r)
> +			goto fail_clean_notifier;
> +	}
>  
>  	r = devm_request_irq(&pci_dev->dev, pci_dev->irq, cio2_irq,
>  			     IRQF_SHARED, CIO2_NAME, cio2);
> @@ -2052,6 +2112,7 @@ static struct pci_driver cio2_pci_driver = {
>  	.remove = cio2_pci_remove,
>  	.driver = {
>  		.pm = &cio2_pm_ops,
> +		.sync_state = cio2_sync_state
>  	},
>  };
>  
> diff --git a/drivers/staging/media/ipu3/Kconfig b/drivers/staging/media/ipu3/Kconfig
> index 3e9640523e50..08842fd8c0da 100644
> --- a/drivers/staging/media/ipu3/Kconfig
> +++ b/drivers/staging/media/ipu3/Kconfig
> @@ -14,3 +14,18 @@ config VIDEO_IPU3_IMGU
>  
>  	  Say Y or M here if you have a Skylake/Kaby Lake SoC with a MIPI
>  	  camera. The module will be called ipu3-imgu.
> +
> +config VIDEO_CIO2_BRIDGE
> +	tristate "IPU3 CIO2 Sensor Bridge Driver"
> +	depends on PCI && VIDEO_V4L2
> +	depends on ACPI
> +	depends on X86
> +	help
> +	  This module provides a bridge connecting sensors (I.E. cameras) to
> +	  the CIO2 device infrastructure via software nodes built from information
> +	  parsed from the SSDB buffer.
> +
> +	  Say Y or M here if your platform's cameras use IPU3 with connections
> +	  that should be defined in ACPI. The module will be called cio2-bridge.
> +
> +	  If in doubt, say N here.
> \ No newline at end of file
> diff --git a/drivers/staging/media/ipu3/Makefile b/drivers/staging/media/ipu3/Makefile
> index 9def80ef28f3..12dff56dbb9e 100644
> --- a/drivers/staging/media/ipu3/Makefile
> +++ b/drivers/staging/media/ipu3/Makefile
> @@ -10,3 +10,4 @@ ipu3-imgu-objs += \
>  		ipu3-css.o ipu3-v4l2.o ipu3.o
>  
>  obj-$(CONFIG_VIDEO_IPU3_IMGU) += ipu3-imgu.o
> +obj-$(CONFIG_VIDEO_CIO2_BRIDGE) += cio2-bridge.o
> \ No newline at end of file
> diff --git a/drivers/staging/media/ipu3/cio2-bridge.c b/drivers/staging/media/ipu3/cio2-bridge.c
> new file mode 100644
> index 000000000000..5115aeeb35a1
> --- /dev/null
> +++ b/drivers/staging/media/ipu3/cio2-bridge.c
> @@ -0,0 +1,448 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include <linux/acpi.h>
> +#include <acpi/acpi_bus.h>
> +#include <linux/device.h>
> +#include <linux/i2c.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/pci.h>
> +#include <media/v4l2-subdev.h>
> +
> +#include <linux/fwnode.h>
> +#include <linux/kref.h>
> +
> +static void cio2_bridge_exit(void);
> +static int cio2_bridge_init(void);
> +
> +#define MAX_CONNECTED_DEVICES			4
> +#define SWNODE_SENSOR_HID			0
> +#define SWNODE_SENSOR_PORT			1
> +#define SWNODE_SENSOR_ENDPOINT			2
> +#define SWNODE_CIO2_PORT			3
> +#define SWNODE_CIO2_ENDPOINT			4
> +#define SWNODE_NULL_TERMINATOR			5
> +
> +#define CIO2_HID				"INT343E"
> +#define CIO2_PCI_ID				0x9d32
> +
> +#define ENDPOINT_SENSOR				0
> +#define ENDPOINT_CIO2				1
> +
> +#define NODE_HID(_HID)				\
> +((const struct software_node) {			\
> +	_HID,					\
> +})
> +
> +#define NODE_PORT(_PORT, _HID_NODE)		\
> +((const struct software_node) {			\
> +	_PORT,					\
> +	_HID_NODE,				\
> +})
> +
> +#define NODE_ENDPOINT(_EP, _PORT, _PROPS)	\
> +((const struct software_node) {			\
> +	_EP,					\
> +	_PORT,					\
> +	_PROPS,					\
> +})
> +
> +#define PROPERTY_ENTRY_NULL			\
> +((const struct property_entry) { })

Alignment. Same appears to apply to other macros (please indent).

> +#define SOFTWARE_NODE_NULL			\
> +((const struct software_node) { })
> +
> +/*
> + * Extend this array with ACPI Hardware ID's of devices known to be
> + * working
> + */
> +
> +static char *supported_devices[] = {
> +	"INT33BE",
> +	"OVTI2680",
> +	"OVTI5648",
> +};
> +
> +/*
> + * software_node needs const char * names. Can't snprintf a const char *,
> + * so instead we need an array of them and use the port num from SSDB as
> + * an index.
> + */
> +
> +const char *port_names[] = {
> +	"port0", "port1", "port2", "port3", "port4",
> +	"port5", "port6", "port7", "port8", "port9"

I think CIO2 is limited to 4.

> +};
> +
> +struct software_node cio2_hid_node = { CIO2_HID, };
> +
> +struct sensor {
> +	struct device *dev;
> +	struct software_node swnodes[5];
> +	struct property_entry sensor_props[6];
> +	struct property_entry cio2_props[3];
> +	struct fwnode_handle *fwnode;
> +};
> +
> +struct cio2_bridge {
> +	int n_sensors;
> +	struct sensor sensors[MAX_CONNECTED_DEVICES];
> +	struct pci_dev *cio2;
> +	struct fwnode_handle *cio2_fwnode;
> +};
> +
> +struct cio2_bridge bridge = { 0, };
> +
> +static const struct property_entry remote_endpoints[] = {
> +	PROPERTY_ENTRY_REF("remote-endpoint", /* Sensor 0, Sensor Property */
> +			   &bridge.sensors[0].swnodes[SWNODE_CIO2_ENDPOINT]),
> +	PROPERTY_ENTRY_REF("remote-endpoint", /* Sensor 0, CIO2 Property */
> +			   &bridge.sensors[0].swnodes[SWNODE_SENSOR_ENDPOINT]),
> +	PROPERTY_ENTRY_REF("remote-endpoint",
> +			   &bridge.sensors[1].swnodes[SWNODE_CIO2_ENDPOINT]),
> +	PROPERTY_ENTRY_REF("remote-endpoint",
> +			   &bridge.sensors[1].swnodes[SWNODE_SENSOR_ENDPOINT]),
> +	PROPERTY_ENTRY_REF("remote-endpoint",
> +			   &bridge.sensors[2].swnodes[SWNODE_CIO2_ENDPOINT]),
> +	PROPERTY_ENTRY_REF("remote-endpoint",
> +			   &bridge.sensors[2].swnodes[SWNODE_SENSOR_ENDPOINT]),
> +	PROPERTY_ENTRY_REF("remote-endpoint",
> +			   &bridge.sensors[3].swnodes[SWNODE_CIO2_ENDPOINT]),
> +	PROPERTY_ENTRY_REF("remote-endpoint",
> +			   &bridge.sensors[3].swnodes[SWNODE_SENSOR_ENDPOINT]),
> +	{ }
> +};
> +
> +/* Data representation as it is in ACPI SSDB buffer */
> +struct sensor_bios_data_packed {
> +	u8 version;
> +	u8 sku;
> +	u8 guid_csi2[16];
> +	u8 devfunction;
> +	u8 bus;
> +	u32 dphylinkenfuses;
> +	u32 clockdiv;
> +	u8 link;
> +	u8 lanes;
> +	u32 csiparams[10];
> +	u32 maxlanespeed;
> +	u8 sensorcalibfileidx;
> +	u8 sensorcalibfileidxInMBZ[3];
> +	u8 romtype;
> +	u8 vcmtype;
> +	u8 platforminfo;
> +	u8 platformsubinfo;
> +	u8 flash;
> +	u8 privacyled;
> +	u8 degree;
> +	u8 mipilinkdefined;
> +	u32 mclkspeed;
> +	u8 controllogicid;
> +	u8 reserved1[3];
> +	u8 mclkport;
> +	u8 reserved2[13];
> +} __attribute__((__packed__));
> +
> +/* Fields needed by bridge driver */
> +struct sensor_bios_data {
> +	struct device *dev;
> +	u8 link;
> +	u8 lanes;
> +	u32 mclkspeed;
> +};
> +
> +static int read_acpi_block(struct device *dev, char *id, void *data, u32 size)
> +{
> +	union acpi_object *obj;
> +	struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };
> +	struct acpi_handle *dev_handle = ACPI_HANDLE(dev);
> +	int status;
> +	u32 buffer_length;
> +
> +	status = acpi_evaluate_object(dev_handle, id, NULL, &buffer);
> +	if (!ACPI_SUCCESS(status))
> +		return -ENODEV;
> +
> +	obj = (union acpi_object *)buffer.pointer;
> +	if (!obj || obj->type != ACPI_TYPE_BUFFER) {
> +		dev_err(dev, "Could't read acpi buffer\n");
> +		status = -ENODEV;
> +		goto err;
> +	}
> +
> +	if (obj->buffer.length > size) {
> +		dev_err(dev, "Given buffer is too small\n");
> +		status = -ENODEV;
> +		goto err;
> +	}
> +
> +	memcpy(data, obj->buffer.pointer, min(size, obj->buffer.length));
> +	buffer_length = obj->buffer.length;
> +	kfree(buffer.pointer);
> +
> +	return buffer_length;
> +err:
> +	kfree(buffer.pointer);
> +	return status;
> +}
> +
> +static int get_acpi_ssdb_sensor_data(struct device *dev,
> +				     struct sensor_bios_data *sensor)
> +{
> +	struct sensor_bios_data_packed sensor_data;
> +	int ret = read_acpi_block(dev, "SSDB", &sensor_data,
> +				  sizeof(sensor_data));
> +
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to fetch SSDB data\n");
> +		return ret;
> +	}
> +
> +	sensor->link = sensor_data.link;
> +	sensor->lanes = sensor_data.lanes;
> +	sensor->mclkspeed = sensor_data.mclkspeed;
> +
> +	return 0;
> +}
> +
> +static int create_endpoint_properties(struct device *dev,
> +				      struct sensor_bios_data *ssdb,
> +				      struct property_entry *sensor_props,
> +				      struct property_entry *cio2_props)
> +{
> +		u32 *data_lanes;

Indentation.

> +		int i;
> +
> +		data_lanes = devm_kmalloc(dev, sizeof(u32) * (int)ssdb->lanes,
> +					  GFP_KERNEL);
> +
> +		if (!data_lanes) {
> +			dev_err(dev,
> +				"Couldn't allocate memory for data lanes array\n");
> +			return -ENOMEM;
> +		}
> +
> +		for (i = 0; i < (int)ssdb->lanes; i++)
> +			data_lanes[i] = (u32)i + 1;
> +
> +		sensor_props[0] = PROPERTY_ENTRY_U32("clock-frequency",
> +						     ssdb->mclkspeed);
> +		sensor_props[1] = PROPERTY_ENTRY_U32("bus-type", 5);
> +		sensor_props[2] = PROPERTY_ENTRY_U32("clock-lanes", 0);

This isn't needed on sensors in practice.

> +		sensor_props[3] = PROPERTY_ENTRY_U32_ARRAY_LEN("data-lanes",
> +							       data_lanes,
> +							       (int)ssdb->lanes);
> +		sensor_props[4] = remote_endpoints[(bridge.n_sensors * 2) + ENDPOINT_SENSOR];
> +		sensor_props[5] = PROPERTY_ENTRY_NULL;
> +
> +		cio2_props[0] = PROPERTY_ENTRY_U32_ARRAY_LEN("data-lanes",
> +							     data_lanes,
> +							     (int)ssdb->lanes);
> +		cio2_props[1] = remote_endpoints[(bridge.n_sensors * 2) + ENDPOINT_CIO2];
> +		cio2_props[2] = PROPERTY_ENTRY_NULL;

I suppose the CSI-2 link frequency is generally encoded in drivers in this
case. A lot of drivers already check for those, could you add the
frequencies here as well (as they are known)?

> +
> +		return 0;
> +}
> +
> +static int connect_supported_devices(void)
> +{
> +	struct acpi_device *adev;
> +	struct device *dev;
> +	struct sensor_bios_data ssdb;
> +	struct sensor *sensor;
> +	struct property_entry *sensor_props;
> +	struct property_entry *cio2_props;
> +	struct fwnode_handle *fwnode;
> +	struct software_node *nodes;
> +	struct v4l2_subdev *sd;
> +	int i, ret;

unsigned int i

> +
> +	for (i = 0; i < ARRAY_SIZE(supported_devices); i++) {
> +		adev = acpi_dev_get_first_match_dev(supported_devices[i],
> +						    NULL, -1);
> +
> +		if (!adev)
> +			continue;
> +
> +		dev = bus_find_device_by_acpi_dev(&i2c_bus_type, adev);
> +
> +		if (!dev) {
> +			pr_info("ACPI match for %s, but it has no i2c device\n",
> +				supported_devices[i]);
> +			continue;
> +		}
> +
> +		if (!dev->driver_data) {
> +			pr_info("ACPI match for %s, but it has no driver\n",
> +				supported_devices[i]);
> +			continue;
> +		} else {
> +			pr_info("Found supported device %s\n",
> +				supported_devices[i]);
> +		}
> +
> +		sensor = &bridge.sensors[bridge.n_sensors];
> +		/*
> +		 * Store sensor's existing fwnode so that it can be restored if
> +		 * this module is removed.
> +		 */
> +		sensor->fwnode = fwnode_handle_get(dev->fwnode);
> +
> +		get_acpi_ssdb_sensor_data(dev, &ssdb);
> +
> +		nodes = sensor->swnodes;
> +		sensor_props = sensor->sensor_props;
> +		cio2_props = sensor->cio2_props;
> +		fwnode = sensor->fwnode;
> +
> +		ret = create_endpoint_properties(dev, &ssdb, sensor_props,
> +						 cio2_props);
> +
> +		if (ret)
> +			return ret;
> +
> +		/* build the software nodes */
> +
> +		nodes[SWNODE_SENSOR_HID] = NODE_HID(supported_devices[i]);
> +		nodes[SWNODE_SENSOR_PORT] = NODE_PORT("port0",
> +						      &nodes[SWNODE_SENSOR_HID]);
> +		nodes[SWNODE_SENSOR_ENDPOINT] = NODE_ENDPOINT("endpoint0",
> +							      &nodes[SWNODE_SENSOR_PORT],
> +							      sensor_props);
> +		nodes[SWNODE_CIO2_PORT] = NODE_PORT(port_names[(int)ssdb.link],
> +						    &cio2_hid_node);
> +		nodes[SWNODE_CIO2_ENDPOINT] = NODE_ENDPOINT("endpoint0",
> +							    &nodes[SWNODE_CIO2_PORT],
> +							    cio2_props);
> +		nodes[SWNODE_NULL_TERMINATOR]   = SOFTWARE_NODE_NULL;
> +
> +		ret = software_node_register_nodes(nodes);
> +		if (ret) {
> +			dev_err(dev,
> +				"Failed to register software nodes for %s\n",
> +				supported_devices[i]);
> +			return ret;
> +		}
> +
> +		fwnode = software_node_fwnode(&nodes[SWNODE_SENSOR_HID]);
> +		if (!fwnode) {
> +			dev_err(dev,
> +				"Failed to get software node for %s\n",
> +				supported_devices[i]);
> +			return ret;
> +		}
> +
> +		fwnode->secondary = ERR_PTR(-ENODEV);
> +		dev->fwnode = fwnode;
> +
> +		/*
> +		 * The device should by this point has driver_data set to an
> +		 * instance of struct v4l2_subdev; set the fwnode for that too.
> +		 */
> +
> +		sd = dev_get_drvdata(dev);
> +		sd->fwnode = fwnode;

I'm a bit lost here. Isn't it enough to have the sensor device's fwnode,
and to use that for V4L2 async fwnode matching (as usual)?

> +
> +		sensor->dev = dev;
> +		bridge.n_sensors++;
> +	}
> +
> +	return 0;
> +}
> +
> +static int cio2_bridge_init(void)
> +{
> +	struct fwnode_handle *fwnode;
> +	int ret;
> +
> +	ret = software_node_register(&cio2_hid_node);
> +
> +	if (ret < 0) {
> +		pr_err("Failed to register the CIO2 HID node\n");
> +		return -EINVAL;
> +	}
> +
> +	ret = connect_supported_devices();
> +
> +	if ((ret < 0) || (bridge.n_sensors <= 0)) {
> +		pr_err("cio2_bridge: Failed to connect any devices\n");
> +		goto out;
> +	} else {
> +		pr_info("Found %d supported devices\n", bridge.n_sensors);
> +	}
> +
> +	bridge.cio2 = pci_get_device(PCI_VENDOR_ID_INTEL, CIO2_PCI_ID, NULL);
> +	if (!bridge.cio2) {
> +		ret = -ENODEV;
> +		goto out;
> +	}
> +
> +	fwnode = software_node_fwnode(&cio2_hid_node);
> +	if (!fwnode) {
> +		pr_err("Error getting fwnode from cio2 software_node\n");
> +		ret = -ENODEV;
> +		goto out;
> +	}
> +
> +	/*
> +	 * We store the pci_dev's existing fwnode, beccause in the event we
> +	 * want to reload (I.E. rmmod and insmod) this module we need to give
> +	 * the device its original fwnode back to prevent problems down the
> +	 * line
> +	 */
> +
> +	bridge.cio2_fwnode = fwnode_handle_get(bridge.cio2->dev.fwnode);
> +
> +	fwnode->secondary = ERR_PTR(-ENODEV);
> +	bridge.cio2->dev.fwnode = fwnode;
> +
> +	return 0;
> +out:
> +	cio2_bridge_exit();
> +	return ret;
> +}
> +
> +static int cio2_bridge_unregister_sensors(void)
> +{
> +	int i, j;
> +	struct sensor *sensor;
> +
> +	for (i = 0; i < bridge.n_sensors; i++) {
> +		sensor = &bridge.sensors[i];
> +
> +		/* give the sensor its original fwnode back */
> +		sensor->dev->fwnode = sensor->fwnode;
> +		fwnode_handle_put(sensor->fwnode);
> +		put_device(sensor->dev);
> +
> +		for (j = 4; j >= 0; j--)
> +			software_node_unregister(&sensor->swnodes[j]);
> +	}
> +
> +	return 0;
> +}
> +
> +static void cio2_bridge_exit(void)
> +{
> +	int ret;
> +
> +	/* Give the pci_dev its original fwnode back */
> +	if (bridge.cio2) {
> +		bridge.cio2->dev.fwnode = bridge.cio2_fwnode;
> +		fwnode_handle_put(bridge.cio2_fwnode);
> +		pci_dev_put(bridge.cio2);
> +	}
> +
> +	ret = cio2_bridge_unregister_sensors();
> +
> +	if (ret)
> +		pr_err("An error occurred unregistering the sensors\n");
> +
> +	software_node_unregister(&cio2_hid_node);
> +}
> +
> +module_init(cio2_bridge_init);
> +module_exit(cio2_bridge_exit);
> +
> +MODULE_DESCRIPTION("A bridge driver to connect sensors to CIO2 infrastructure.");
> +MODULE_LICENSE("GPL v2");
> +MODULE_ALIAS("acpi*:INT343E:*");

-- 
Kind regards,

Sakari Ailus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
