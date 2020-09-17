Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E46326DDC0
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 16:14:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3190A878F4;
	Thu, 17 Sep 2020 14:14:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M8vx3vi7M9em; Thu, 17 Sep 2020 14:14:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD840878E7;
	Thu, 17 Sep 2020 14:14:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BCE301BF399
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 14:14:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B956187627
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 14:14:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id khC26iZXaNib for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 14:14:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1DF6087626
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 14:14:19 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id l126so1295913pfd.5
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 07:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4unBKDTxzRQRPQZlJUn6A2Soath9XJxD61TMB7PnRfc=;
 b=GFS3galhGl4pGXPAIFLaGVY3InSJNn9hCDP3n2QvcYIax+EGhdNUkMF7zkwhdzReoH
 cb3O56eEVi8dIF+YPK/zBXhJ9V5DtYg2RgBY1deepye5Gm2NNXsYfFh92WhGB/acfIXW
 UD8asOTuv+0Ndipo5Uy3hghSHxuqylYjw8tyAsP5vQdWlUBM28Dk3hFpOdGfDNxBAzJO
 7/JmyDR7aKS2qouff8Lo1aq64RHqhmyHFoohyWZVCFGxSr1dMNAKhlnmfnHHLRxcetyH
 ww3vWCzYf5ZgObokCoVQGFdalgDY6f64rE0Vsy9+UUgrLXUCnd3/f0rG8tP+vbDIhfKx
 vRUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4unBKDTxzRQRPQZlJUn6A2Soath9XJxD61TMB7PnRfc=;
 b=XNhMiT+a//mExCgUVLjr5HspcbMAScmeFihRm0aYWR7rUqacAYB40MR+6ZKSe+6An0
 5XOSROhD3HsPn3N3e180lq795bjO22+C95daqA0G1cAQ6d0sQt+Mpefot39mDsm6Z2Cp
 bvgJIU6iowDngpz4SmvAoP9D24qvnG/Vp8Fy//F/Xt+FI+SbLl4sthjEbnmQZQvnsmGE
 0Vv5mzY7UAbVqgAzwaPgOffUYHedfh55TCoHGv0Ru6QKxFFlZpHCzzy4huaUirrli/Ya
 nHIKlOwT9iYfzoV5SfIvT4PZaY4PGt6KFvSWiaGc2Kh1vQROtK9KFzUCchfF3m/U2DyJ
 Rvdg==
X-Gm-Message-State: AOAM532kVxy97vmuRW3kj1PzYZ0M/GfV7fVRQtEJ8d79cW3LVv6RXHG0
 9Nx3TXi3xUBOdrC1xx0HV+o94XxmP4ZEhJzzRPw=
X-Google-Smtp-Source: ABdhPJy5qeqotttBdV66/aTb7EtTkcWg7OUAGeLKW75rGS3vVMXitZ6o4V8b0Zq8/QxW2yHX8Om9DwlIoFrEfBI51K4=
X-Received: by 2002:a63:ec4c:: with SMTP id r12mr22049725pgj.74.1600352058607; 
 Thu, 17 Sep 2020 07:14:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200916213618.8003-1-djrscally@gmail.com>
 <20200917103343.GW26842@paasikivi.fi.intel.com>
 <8133a57d-ab4c-dccd-4325-9b10e7805648@gmail.com>
 <20200917124514.GK3956970@smile.fi.intel.com>
 <fea9d85a-7be9-0270-bd59-8e479a836ae6@gmail.com>
In-Reply-To: <fea9d85a-7be9-0270-bd59-8e479a836ae6@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 17 Sep 2020 17:14:00 +0300
Message-ID: <CAHp75VcWZMThc6BPNiqvvEUVUbShV-7+Xn11E6J7UwMLfnszpg@mail.gmail.com>
Subject: Re: [RFC PATCH] Add bridge driver to connect sensors to CIO2 device
 via software nodes on ACPI platforms
To: Dan Scally <djrscally@gmail.com>, Hans de Goede <hdegoede@redhat.com>, 
 Mark Gross <mgross@linux.intel.com>
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

On Thu, Sep 17, 2020 at 4:53 PM Dan Scally <djrscally@gmail.com> wrote:
>
> Hi Andy, thanks for input (as always)

You're welcome! I'm really impressed by your activity in this area.

> On 17/09/2020 13:45, Andy Shevchenko wrote:
> > On Thu, Sep 17, 2020 at 11:52:28AM +0100, Dan Scally wrote:
> >> On 17/09/2020 11:33, Sakari Ailus wrote:

To the point of placement, I think this should go under
drivers/platform/x86 (Adding Hans and Mark, who can express their
opinions).

...

> > Ah, I think you misinterpreted the meaning of above. The above is a switch how
> > camera device appears either as PCI or an ACPI. So, it effectively means you
> > should *not* have any relation for this HID until you find a platform where the
> > device is for real enumerated via ACPI.
> >
> Ah, ok. So that was never going to work. Thanks. That does raise another
> question; we have had some testers report failure, which turns out to be
> because on their platforms the definition of their cameras in ACPI is
> never translated into an i2c_client so the cio2-bridge doesn't bind.
> Those have a similar conditional in the _STA method, see CAM1 in this
> DSDT for example:
> https://raw.githubusercontent.com/linux-surface/acpidumps/master/surface_go/dsdt.dsl.
> Is there anything we can do to enable those cameras to be discovered too?

It means that this

...

> >>>> +#define PROPERTY_ENTRY_NULL                       \
> >>>> +((const struct property_entry) { })
> >>> Alignment. Same appears to apply to other macros (please indent).
> >> Yep
> >>>> +#define SOFTWARE_NODE_NULL                        \
> >>>> +((const struct software_node) { })
> > Why?!
> >
> It felt ugly to have the other definitions be macros and not this one,
> but I can change it.

My point is that those macros are simply redundant. The point is to
have a terminator record (all 0:s in the last entry of an array) which
is usually being achieved by allocating memory with kcalloc() which
does implicitly this for you.

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
