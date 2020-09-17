Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AE226E75A
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 23:25:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1F6E08727D;
	Thu, 17 Sep 2020 21:25:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r3D_EAfOYlzq; Thu, 17 Sep 2020 21:25:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C56B887261;
	Thu, 17 Sep 2020 21:25:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9A0891BF35E
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 21:25:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 952A120432
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 21:25:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pCgpFO3SVvue for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 21:25:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 4B5402E1B1
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 21:25:07 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id d4so3319327wmd.5
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 14:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=int6IPu+Ne/qM9mU8wvD7H8uWFzoTOCi2HL6/Vd5TOA=;
 b=j1XdSqhDjoXl7V9YkEudgyoz6Qq1UeDe7d6SNxWgxi2AJ4fNrOeXjqBPQPU+7tQtr9
 U5C95Vx8PSD9Qr5+8Y62NA4Hk0b4IC+fArfp4ogiQojZ++b+s6ubHVLa3m0SSbVtdh7Q
 wOzj/hhuZyckYEky3xQMeWLNF9zgDeCpefna7UUDiiRUPX5uprQu8TxOaZk9AJOLMxjG
 SPZpi9IQ5Fyk91MWzUQxjV/GC55uTSeKCv6IgzcOUZTZL4kOhgBxNBI/lqyNixTBLOve
 AxIJ0YduNJtg+fMWaMf5KMpuJgHUabK4aIcRYqWEhyxsnuRsAUdI9vpoIDNY5elTAHSZ
 XiRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=int6IPu+Ne/qM9mU8wvD7H8uWFzoTOCi2HL6/Vd5TOA=;
 b=nn91uBYWC4QOTU4HSSJUEp0Hvdny4KRM1SwFpMYha715Po5YrtrsHGmgpu6Ww4PEiq
 t1Fca7ht+fra5MSJdFGjiPiM7hNoMyEiuYIiPxqUqaZxFcx20ZpcjsbFIaZYXgU0bOBX
 i82sHLR9TtvL5YmkmlIx27+AYg2nPu0eL8hinDq3apfOps9P/DbmkTv1E7ZpD/wkqGA8
 YnMdeeqHAk1ByPfdT1daKD8TwEXclrZqVdMIur6OED/LewMI37j/4extNucNz0ZsUhqe
 VX97wgw4PWBrCOak3RqNbkvjboBSBeTroyocvirykBTbn0ogFV4Xx/xJMBYVj0oc2cJI
 FFmw==
X-Gm-Message-State: AOAM532R+ca7MihjoVUsUVIySBkaAfrz3iJxeKhj5cd3rRpYqyRrrZGq
 3GplX3PN7pH8QvKfFImyaUM=
X-Google-Smtp-Source: ABdhPJzvOGira0U3RA3uqlmppGoplowp5YeQvfqeSk3cXRt/7w48OcuJMt/JfLXejLhs3nvtha8gMA==
X-Received: by 2002:a1c:e0d4:: with SMTP id x203mr12964887wmg.91.1600377905538; 
 Thu, 17 Sep 2020 14:25:05 -0700 (PDT)
Received: from [192.168.1.158] ([2.29.208.34])
 by smtp.gmail.com with ESMTPSA id i15sm1201529wrb.91.2020.09.17.14.25.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Sep 2020 14:25:04 -0700 (PDT)
Subject: Re: [RFC PATCH] Add bridge driver to connect sensors to CIO2 device
 via software nodes on ACPI platforms
To: Andy Shevchenko <andy.shevchenko@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>
References: <20200916213618.8003-1-djrscally@gmail.com>
 <20200917103343.GW26842@paasikivi.fi.intel.com>
 <8133a57d-ab4c-dccd-4325-9b10e7805648@gmail.com>
 <20200917124514.GK3956970@smile.fi.intel.com>
 <fea9d85a-7be9-0270-bd59-8e479a836ae6@gmail.com>
 <CAHp75VcWZMThc6BPNiqvvEUVUbShV-7+Xn11E6J7UwMLfnszpg@mail.gmail.com>
From: Daniel Scally <djrscally@gmail.com>
Message-ID: <b85ec736-6e02-4dd8-d7ce-b71c673e2b05@gmail.com>
Date: Thu, 17 Sep 2020 22:25:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAHp75VcWZMThc6BPNiqvvEUVUbShV-7+Xn11E6J7UwMLfnszpg@mail.gmail.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Rob Herring <robh@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 jorhand@linux.microsoft.com,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 kieran.bingham@ideasonboard.com, Tsuchiya Yuto <kitakar@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Tian Shu Qiu <tian.shu.qiu@intel.com>,
 Yong Zhi <yong.zhi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 17/09/2020 15:14, Andy Shevchenko wrote:
> On Thu, Sep 17, 2020 at 4:53 PM Dan Scally <djrscally@gmail.com> wrote:
>> Hi Andy, thanks for input (as always)
> You're welcome! I'm really impressed by your activity in this area.
Thanks - it's pretty fun so far
>>> Ah, I think you misinterpreted the meaning of above. The above is a switch how
>>> camera device appears either as PCI or an ACPI. So, it effectively means you
>>> should *not* have any relation for this HID until you find a platform where the
>>> device is for real enumerated via ACPI.
>>>
>> Ah, ok. So that was never going to work. Thanks. That does raise another
>> question; we have had some testers report failure, which turns out to be
>> because on their platforms the definition of their cameras in ACPI is
>> never translated into an i2c_client so the cio2-bridge doesn't bind.
>> Those have a similar conditional in the _STA method, see CAM1 in this
>> DSDT for example:
>> https://raw.githubusercontent.com/linux-surface/acpidumps/master/surface_go/dsdt.dsl.
>> Is there anything we can do to enable those cameras to be discovered too?
> It means that this
Is the rest of this comment missing?
>>>>>> +#define PROPERTY_ENTRY_NULL                       \
>>>>>> +((const struct property_entry) { })
>>>>> Alignment. Same appears to apply to other macros (please indent).
>>>> Yep
>>>>>> +#define SOFTWARE_NODE_NULL                        \
>>>>>> +((const struct software_node) { })
>>> Why?!
>>>
>> It felt ugly to have the other definitions be macros and not this one,
>> but I can change it.
> My point is that those macros are simply redundant. The point is to
> have a terminator record (all 0:s in the last entry of an array) which
> is usually being achieved by allocating memory with kcalloc() which
> does implicitly this for you.
Ah I see. TIL - thanks, I'll make that change too.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
