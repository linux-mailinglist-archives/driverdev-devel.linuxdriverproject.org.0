Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1101D6771
	for <lists+driverdev-devel@lfdr.de>; Sun, 17 May 2020 12:37:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4DE2620509;
	Sun, 17 May 2020 10:37:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s-CK9FxqhaZo; Sun, 17 May 2020 10:37:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 89CAE204C4;
	Sun, 17 May 2020 10:37:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8A3431BF46A
 for <devel@linuxdriverproject.org>; Sun, 17 May 2020 10:37:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 86CC2864D0
 for <devel@linuxdriverproject.org>; Sun, 17 May 2020 10:37:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id INvY4pOneifS for <devel@linuxdriverproject.org>;
 Sun, 17 May 2020 10:37:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CB6DB83469
 for <devel@driverdev.osuosl.org>; Sun, 17 May 2020 10:37:33 +0000 (UTC)
IronPort-SDR: X0tMysfDzrwv43RwfZVVeJIetMcdhF8oVx6G2wj32X0W2hPWmQ3SVmHWDWbplPlLRpR/Hn1Qv/
 9Khnno2Bjrdw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2020 03:37:33 -0700
IronPort-SDR: 2rlnOupOePzsQUHffcSW1gW2CbpqjzJsQZ9i7w03d6UV3xwGUf8PdYYGyr0payF3VpXIAH4DW2
 hSu96fBPL47g==
X-IronPort-AV: E=Sophos;i="5.73,403,1583222400"; d="scan'208";a="254201128"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2020 03:37:31 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 9C0CD20803; Sun, 17 May 2020 13:36:59 +0300 (EEST)
Date: Sun, 17 May 2020 13:36:59 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH] media: ipu3: add a module to probe sensors via ACPI
Message-ID: <20200517103659.GS17578@paasikivi.fi.intel.com>
References: <12fbe3f5c6a16c5f3447adbc09fe27ceb2b16823.1589625807.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <12fbe3f5c6a16c5f3447adbc09fe27ceb2b16823.1589625807.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Bingbu Cao <bingbu.cao@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tian Shu Qiu <tian.shu.qiu@intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Mauro,

Thanks for the patch.

On Sat, May 16, 2020 at 12:43:39PM +0200, Mauro Carvalho Chehab wrote:
> On devices without ACPI, or which ACPI is not prepared to
> export sensor data via DT, we need a different probing
> method.
> 
> This little driver adds initial support to probe the
> sensors found on a Dell Latitude 7285.
> 
> For now, it just detects the hardware and use request_module()
> to load a sensor driver.
> 
> In the specific case of this device, the ACPI DTST dable
> describes 2 camera sensors for this module, but the
> current upstream doesn't have yet drivers for such
> sensors. So, this patch just detects the PMIC used on
> this device and tries to load a sensor.
> 
> Once the sensor gets added, some additional code will
> be needed to pass via platform_data other details, like
> callbacks for PMIC's command to turn the sensor on/off
> and other sensor-specific settings.
> 
> The idea of this patch was inspired on how the sensors
> are probed by the staging atomisp driver.
> 
> The current result of this driver with the Dell
> Latitude 7285 is:
> 
> 	ipu3_acpi i2c-INT3477:00: ipu3_acpi_probe: ACPI detected it on bus ID=LNK1, HID=INT3477
> 	ipu3_acpi i2c-INT3477:00: Found DMI entry for 'Latitude 7285' with sensor INT3477
> 	ipu3_acpi i2c-INT3477:00: Loading sensor module ov8858
> 	ipu3_acpi i2c-OVTI9234:00: ipu3_acpi_probe: ACPI detected it on bus ID=LNK2, HID=OVTI9234
> 	ipu3_acpi i2c-OVTI9234:00: Found DMI entry for 'Latitude 7285' with sensor OVTI9234
> 	ipu3_acpi i2c-OVTI9234:00: Loading sensor module ov9234
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

...

> +/*
> + * Should list known sensor devices found at DSDT table as "CAM0", "CAM1", ...
> + *
> + * The table below is probably incomplete. It came from the DSDT table found
> + * at a Dell Latitude 7285 (Method HCID).
> + */
> +static const struct acpi_device_id ipu3_acpi_acpi_match[] = {
> +	{"INT3471"},
> +	{"INT33BE"},
> +	{"INT3476"},
> +	{"INT3477"},
> +	{"INT3474"},
> +	{"INT3473"},
> +	{"INT3475"},
> +	{"INT3478"},
> +	{"INT3479"},
> +	{"INT347A"},
> +	{"INT347B"},
> +	{"OVTI9234"},
> +	{"OVTI9734"},
> +	{"OVTI8856"},
> +	{"OVTIF860"},
> +	{},
> +};
> +MODULE_DEVICE_TABLE(acpi, ipu3_acpi_acpi_match);

Instead of creating a new way to probe drivers on ACPI systems, please add
the appropriate ACPI device IDs to the respective drivers. E.g.
drivers/media/i2c/imx319.c implements this.

-- 
Kind regards,

Sakari Ailus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
