Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 840C726DC12
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 14:53:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B88EF2E1A0;
	Thu, 17 Sep 2020 12:53:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pmWYybd8pB-6; Thu, 17 Sep 2020 12:53:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 833E62E1B1;
	Thu, 17 Sep 2020 12:51:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CC21B1BF381
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 12:51:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C871D878C2
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 12:51:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ul4KEGNUaQW7 for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 12:51:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CAFFF878CA
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 12:51:54 +0000 (UTC)
IronPort-SDR: y2sCRpHQEOVj7R3qWS8DGbNkrcCdSnV+iax3J/mkOsybwZU2nPRv1gw2w+ITsUkv5rVB5T0uxW
 pNZK1s1DtEeg==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="221233776"
X-IronPort-AV: E=Sophos;i="5.76,436,1592895600"; d="scan'208";a="221233776"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 05:51:54 -0700
IronPort-SDR: I2/kqZ5J7tf0+T/O8IZeaY7ADSe8lHCPleOd8b15KotCW8WF8rqqH+gA0lTE8VlqZ2w6yg55bK
 xNomfzMr+1dA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,437,1592895600"; d="scan'208";a="336403560"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga008.jf.intel.com with ESMTP; 17 Sep 2020 05:51:50 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1kItHm-00HKBf-I2; Thu, 17 Sep 2020 15:45:14 +0300
Date: Thu, 17 Sep 2020 15:45:14 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Dan Scally <djrscally@gmail.com>
Subject: Re: [RFC PATCH] Add bridge driver to connect sensors to CIO2 device
 via software nodes on ACPI platforms
Message-ID: <20200917124514.GK3956970@smile.fi.intel.com>
References: <20200916213618.8003-1-djrscally@gmail.com>
 <20200917103343.GW26842@paasikivi.fi.intel.com>
 <8133a57d-ab4c-dccd-4325-9b10e7805648@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8133a57d-ab4c-dccd-4325-9b10e7805648@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
Cc: devel@driverdev.osuosl.org, robh@kernel.org, jorhand@linux.microsoft.com,
 linux-media@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, kieran.bingham@ideasonboard.com,
 kitakar@gmail.com, Sakari Ailus <sakari.ailus@linux.intel.com>,
 bingbu.cao@intel.com, mchehab@kernel.org, davem@davemloft.net,
 tian.shu.qiu@intel.com, yong.zhi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 17, 2020 at 11:52:28AM +0100, Dan Scally wrote:
> On 17/09/2020 11:33, Sakari Ailus wrote:

I will do better review for next version, assuming you will Cc reviewers and
TWIMC people. Below is like small part of comments I may give to the code.

...

> > The ones I know require PMIC control done in software (not even
> > sensors are accessible without that).
> So far we've just been getting the sensor drivers themselves to toggle
> the gpio pins that turn the PMIC on (those pins are listed against the
> PMIC's _CRS, and we've been finding those by evaluating the sensor's
> _DEP) - once that's done the cameras show up on i2c and,with the bridge
> driver installed, you can use libcamera to take photos.

Do I understand correctly that you are able to get pictures from the camera
hardware?

...

> > a module and not enlarge everyone's kernel, and the initialisation would at
> > the same time take place before the rest of what the CIO2 driver does in
> > probe.
> I thought of that as well, but wasn't sure which was preferable. I can
> compress it into the CIO2 driver though sure.

Sakari, I tend to agree with Dan and have the board file separated from the
driver and even framework.

...

> > Cc Andy, too.

Thanks!

...

> >> I wanted to raise this as an RFC as although I don't think it's ready for
> >> integration it has some things that I'd like feedback on, in particular the
> >> method I chose to make the module be auto-inserted. A more ideal method would
> >> have been to have the driver be an ACPI driver for the INT343E device, but each
> > What do you think this device does represent? Devices whose status is
> > always zero may exist in the table even if they would not be actually
> > present.
> >
> > CIO2 is a PCI device and it has no ACPI (or PNP) ID, or at least should not
> > have one.
> This is the ACPI entry I mean:
> 
> Device (CIO2)
> {
>     Method (_STA, 0, NotSerialized)  // _STA: Status
>     {
>         If ((CIOE == One))
>         {
>             Return (0x0F)
>         }
>         Else
>         {
>             Return (Zero)
>         }
>     }
> 
>     Name (_HID, "INT343E")  // _HID: Hardware ID
>     Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
>     {
>         Name (CBUF, ResourceTemplate ()
>         {
>             Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, _Y15)
>             {
>                 0x00000010,
>             }
>             Memory32Fixed (ReadWrite,
>                 0xFE400000,         // Address Base
>                 0x00010000,         // Address Length
>                 )
>         })
>         CreateDWordField (CBUF, \_SB.PCI0.CIO2._CRS._Y15._INT, CIOV)  // _INT: Interrupts
>         CIOV = CIOI /* \CIOI */
>         Return (CBUF) /* \_SB_.PCI0.CIO2._CRS.CBUF */
>     }
> }

Ah, I think you misinterpreted the meaning of above. The above is a switch how
camera device appears either as PCI or an ACPI. So, it effectively means you
should *not* have any relation for this HID until you find a platform where the
device is for real enumerated via ACPI.

...

> >> +static int cio2_probe_can_progress(struct pci_dev *pci_dev)
> >> +{
> >> +	void *sensor;

Why void?

> >> +	/*
> >> +	 * On ACPI platforms, we need to probe _after_ sensors wishing to connect
> >> +	 * to cio2 have added a device link. If there are no consumers yet, then
> >> +	 * we need to defer. The .sync_state() callback will then be called after
> >> +	 * all linked sensors have probed
> >> +	 */
> >> +
> >> +	if (IS_ENABLED(CONFIG_ACPI)) {

> >> +		sensor = (struct device *)list_first_entry_or_null(

Besides the fact that castings from or to void * are implicit in C, the proper
use of list API should have pretty well defined type of lvalue.

> >> +								&pci_dev->dev.links.consumers,
> >> +								struct dev_links_info,
> >> +								consumers);
> > Please wrap so it's under 80.
> >
> Will do
> >> +
> >> +		if (!sensor)
> >> +			return -EPROBE_DEFER;
> >> +	}
> >> +
> >> +	return 0;
> >> +}

...

> >> +	if (!IS_ENABLED(CONFIG_ACPI)) {
> >> +		r = cio2_parse_firmware(cio2);
> >> +		if (r)
> >> +			goto fail_clean_notifier;
> >> +	}

How comes?

...

> >> \ No newline at end of file

???

Be sure you are using good editor.

...

> >> +#include <acpi/acpi_bus.h>

Redundant. ACPI headers are designed the way that you are using a single header
in Linux kernel for all. It might be different in drivers/acpi stuff, but not
in general.

> >> +#include <linux/device.h>
> >> +#include <linux/i2c.h>
> >> +#include <linux/kernel.h>
> >> +#include <linux/module.h>
> >> +#include <linux/pci.h>
> >> +#include <media/v4l2-subdev.h>
> >> +
> >> +#include <linux/fwnode.h>
> >> +#include <linux/kref.h>

Please, keep them sorted. And since it's for media, the media inclusion may be
placed last in a separate group.

...

> >> +#define PROPERTY_ENTRY_NULL			\
> >> +((const struct property_entry) { })
> > Alignment. Same appears to apply to other macros (please indent).
> Yep
> >
> >> +#define SOFTWARE_NODE_NULL			\
> >> +((const struct software_node) { })

Why?!

...

> >> +struct software_node cio2_hid_node = { CIO2_HID, };

static ?

Same for other global variables.

...

> >> +struct cio2_bridge bridge = { 0, };

When define as static the assignment will not be needed.

...

> >> +static int read_acpi_block(struct device *dev, char *id, void *data, u32 size)
> >> +{
> >> +	union acpi_object *obj;
> >> +	struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };

> >> +	struct acpi_handle *dev_handle = ACPI_HANDLE(dev);

Usually we use simple handle if there is no ambiguous reading.

> >> +	int status;

Should be acpi_status

> >> +	u32 buffer_length;
> >> +
> >> +	status = acpi_evaluate_object(dev_handle, id, NULL, &buffer);

> >> +	if (!ACPI_SUCCESS(status))

ACPI_FAILURE()

> >> +		return -ENODEV;
> >> +
> >> +	obj = (union acpi_object *)buffer.pointer;

Why explicit casting?

> >> +	if (!obj || obj->type != ACPI_TYPE_BUFFER) {
> >> +		dev_err(dev, "Could't read acpi buffer\n");

> >> +		status = -ENODEV;

Should have different int type variable for that.

> >> +		goto err;

If there is no obj, you may return directly without freeing.

> >> +	}
> >> +
> >> +	if (obj->buffer.length > size) {
> >> +		dev_err(dev, "Given buffer is too small\n");
> >> +		status = -ENODEV;
> >> +		goto err;
> >> +	}
> >> +
> >> +	memcpy(data, obj->buffer.pointer, min(size, obj->buffer.length));

Does type of size and length the same? Otherwise you need min_t().

> >> +	buffer_length = obj->buffer.length;
> >> +	kfree(buffer.pointer);
> >> +
> >> +	return buffer_length;

> >> +err:

Consider naming labels by what they are about to do. Like
	err_free:
here.

> >> +	kfree(buffer.pointer);
> >> +	return status;
> >> +}

> >> +static int get_acpi_ssdb_sensor_data(struct device *dev,
> >> +				     struct sensor_bios_data *sensor)
> >> +{
> >> +	struct sensor_bios_data_packed sensor_data;

> >> +	int ret = read_acpi_block(dev, "SSDB", &sensor_data,
> >> +				  sizeof(sensor_data));

Please, split declaration and assignment especially in the cases where it
requires long lines.

> >> +	if (ret < 0) {
> >> +		dev_err(dev, "Failed to fetch SSDB data\n");
> >> +		return ret;
> >> +	}
> >> +
> >> +	sensor->link = sensor_data.link;
> >> +	sensor->lanes = sensor_data.lanes;
> >> +	sensor->mclkspeed = sensor_data.mclkspeed;
> >> +
> >> +	return 0;
> >> +}

...

> >> +		if (!dev->driver_data) {
> >> +			pr_info("ACPI match for %s, but it has no driver\n",
> >> +				supported_devices[i]);
> >> +			continue;
> >> +		} else {
> >> +			pr_info("Found supported device %s\n",
> >> +				supported_devices[i]);
> >> +		}

Positive conditions are easier to read, but on the other hand 'else' is
redundant in such conditionals (where if branch bails out from the flow).

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
