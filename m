Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3D72754A2
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Sep 2020 11:39:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E6AF08612E;
	Wed, 23 Sep 2020 09:39:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZivqolwdBXAC; Wed, 23 Sep 2020 09:39:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9F583860FD;
	Wed, 23 Sep 2020 09:39:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 882E31BF4E2
 for <devel@linuxdriverproject.org>; Wed, 23 Sep 2020 09:39:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 82B54861D4
 for <devel@linuxdriverproject.org>; Wed, 23 Sep 2020 09:39:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uywABjT0jF15 for <devel@linuxdriverproject.org>;
 Wed, 23 Sep 2020 09:39:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9323D86124
 for <devel@driverdev.osuosl.org>; Wed, 23 Sep 2020 09:39:19 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id e16so20285721wrm.2
 for <devel@driverdev.osuosl.org>; Wed, 23 Sep 2020 02:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=D1hykoJlnCEeW9Ghu+9NT8UmdNa8KDWJIzw0nB++G+o=;
 b=aNZZ3zh3dXHZq+DEvmi7EBk7MW0F6CK2wfzsWMJi/8ksphUU3JgVFvXpnudNyt3YSG
 mVFenqW5r0JRO70qWqa9wmqnlwxBHrH+NqiadFbxeE/lGAhjtpBAAXmzUBs+sCJq+qn1
 DZbT59o/7j6ma2DJmPzo1nwjUeEWimkKNrYifnXRU03vECyGHTW4b/Ox0VaqAXSj0HGW
 wmiVetpwyPlDi7l/KCJxBHL6YFLEKUSPikWDm2BBLQ/wa+LE09UxwChRaIyGq5TZqxFm
 bosvRPYRrRPojzUcd6XrPsDwxGeOayfFDwAy1XF7p4b2iVwLkxQl3m3aTvlHu4l7QGS8
 IYYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=D1hykoJlnCEeW9Ghu+9NT8UmdNa8KDWJIzw0nB++G+o=;
 b=D2Baw5K1yNzIf+XuW5vyeOEaUa2dxWjr8m5VeMlKbN1Y4N+Li1vUlwl1U37lDkS85G
 DqaH4dwTuQH2UHJDo1fG7v7YcvlbCiOVZf3qY9EJpff+Sq57X7A638iXOg08sgeNdvi4
 vpqZVSURMOcywkGPmAl1kMvcc2BtNs5+vgtKd8vZ+Aak2o3sboh8l/8jMQwDhko6eR9V
 gUqCFIgtHbrBWxSnelGxZ69y/ACkJWbRx4louo2zG50HWNyAwV2A8sk7/6U97wHexXMc
 h1IQ5qMIkOkJ/kNEbJHEwlV67gCZj0w8iAEFpqFsVDCxoAHsMbrNJhnpztBAf2bzngr0
 Rl/g==
X-Gm-Message-State: AOAM530oqHfgi04ExauEbldfypfRKODxuNz2hEk+5CbOYpK2oVcuuEo7
 +keNh3eHqilUek3Il4pMmWM=
X-Google-Smtp-Source: ABdhPJza60wC4/rfImEEWz0r/cdUr/7aJlKJeSHoy/5KQ0fM/QJ0m+D6tCiwl/7pIL0vXx6Sonergw==
X-Received: by 2002:a5d:60d0:: with SMTP id x16mr9981993wrt.196.1600853957992; 
 Wed, 23 Sep 2020 02:39:17 -0700 (PDT)
Received: from [192.168.1.211] ([95.144.134.217])
 by smtp.gmail.com with ESMTPSA id c205sm7680655wmd.33.2020.09.23.02.39.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Sep 2020 02:39:17 -0700 (PDT)
Subject: Re: [RFC PATCH] Add bridge driver to connect sensors to CIO2 device
 via software nodes on ACPI platforms
To: Sakari Ailus <sakari.ailus@linux.intel.com>
References: <20200916213618.8003-1-djrscally@gmail.com>
 <20200917103343.GW26842@paasikivi.fi.intel.com>
From: Dan Scally <djrscally@gmail.com>
Message-ID: <c2bb9d22-6914-ed59-6c77-a0020e2faed5@gmail.com>
Date: Wed, 23 Sep 2020 10:39:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200917103343.GW26842@paasikivi.fi.intel.com>
Content-Language: en-US
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

Hi Sakari

On 17/09/2020 11:33, Sakari Ailus wrote:
>> +		ret = software_node_register_nodes(nodes);
>> +		if (ret) {
>> +			dev_err(dev,
>> +				"Failed to register software nodes for %s\n",
>> +				supported_devices[i]);
>> +			return ret;
>> +		}
>> +
>> +		fwnode = software_node_fwnode(&nodes[SWNODE_SENSOR_HID]);
>> +		if (!fwnode) {
>> +			dev_err(dev,
>> +				"Failed to get software node for %s\n",
>> +				supported_devices[i]);
>> +			return ret;
>> +		}
>> +
>> +		fwnode->secondary = ERR_PTR(-ENODEV);
>> +		dev->fwnode = fwnode;
>> +
>> +		/*
>> +		 * The device should by this point has driver_data set to an
>> +		 * instance of struct v4l2_subdev; set the fwnode for that too.
>> +		 */
>> +
>> +		sd = dev_get_drvdata(dev);
>> +		sd->fwnode = fwnode;
> I'm a bit lost here. Isn't it enough to have the sensor device's fwnode,
> and to use that for V4L2 async fwnode matching (as usual)?

Just working through the changes everyone's suggested for the v2. For
this one the reason it had to be this way is that
v4l2_async_register_subdev() just picks up the fwnode from the device.
If we wanted to just rely on that call as part of the sensor driver's
probe() then we need to reprobe() the sensor in case it already probed
before this code has managed to run, and reprobing after assigning the
software_nodes as fwnode to the sensor no longer works - the long and
short of that is that the ACPI matching portion of i2c_device_match()
calls ACPI_COMPANION(dev), and that macro relies on dev->fwnode->ops
being acpi_device_fwnode_ops which they no longer are. This is also the
reason I was storing the original fwnode's of the sensor device and cio2
device in the cio2-bridge; so that they could be restored if the module
was removed.



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
