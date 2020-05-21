Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF8C1DC81B
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 May 2020 10:01:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C77AD85E03;
	Thu, 21 May 2020 08:00:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4lv736iKRmuE; Thu, 21 May 2020 08:00:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F082386D19;
	Thu, 21 May 2020 08:00:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A74D21BF9B5
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 08:00:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A1A918917D
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 08:00:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rgaeg0tpjIKS for <devel@linuxdriverproject.org>;
 Thu, 21 May 2020 08:00:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F171888E23
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 08:00:36 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id 145so2949307pfw.13
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 01:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uSI1TzmynLMdYw4uoJY8RuqX2yPVX/cB6bYkZkYI33w=;
 b=d+8Sk2onlGPEDjrv5XN09uGGZBCeS9nU8gViV2Q/InDcQCwtJcVay7lKb6nRWAoFmq
 EXd3wfN+ZPqvb6Q/OBR7WpWdHCQ/A6t2U8SaNOAonY6AtktW6cOIsTD5Z0tNxJuLxQyX
 5PtJPBOJvSnTLbKqmHW0oVcSmE61WgkYzaNZN1bRnGTftinDmiCnUQyfRPCcArHTiKAY
 jlEWlG6pC3mqjjzmjXoKJ6s45/b7li/rBVwEPlwgaNww21M6L8SGow1Hm7Pon5BaPN72
 iqnw9G7K3T8jH1KDb6eHJeH2bRmIJT/MM6ao2lE6JxKMRPjVxGj2htH26XuAIp3nZIoC
 T2wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uSI1TzmynLMdYw4uoJY8RuqX2yPVX/cB6bYkZkYI33w=;
 b=KbjrxLZJ2mCtLL2f8mL7qhr42h3w2vONwiX4NV7aIAk1+A5DoFGtL4M7RbyEL6sFbq
 aPD7i1SJQLIiw3QXbH8zZfY76tf+eHRVw2fdAt6Sp+x6JhqAeGHLL9u66mubTv2ilkxa
 GmAfz1/7neP5H1ZFHCCyskJPw2tRZBngivbbV5goxLwGtcdu/0grLbgBULUoEDPgLHGt
 gX1g5EQXEjvnWS6DCIVYF4CB1SsY9m4yJg7JpK5rkE1hL2ibr8RN8j3pAOtMIzhM22kR
 SRADTdxESu47MBD+1nUF8q8iwnCylD8KI7Jzf2cARzyNK+wyl4GZXqeVaG5reFHb6In6
 6JxA==
X-Gm-Message-State: AOAM531Eb1Wtygg0vM9vmBVT2cqwrMjlY89+aTDSiauTfQAyD/0ylczt
 FnT7/wLDC3/qkYqNsuaYYsp47TEVFKmJRe/zPd0=
X-Google-Smtp-Source: ABdhPJyysXlFqDV936jzcfp0iXYXXlv7Q/TWoYK/rltvK+b+sPa0aiSCbb27GzRaIAnY7ppBHdOgBxQpeNkNtSyp9m0=
X-Received: by 2002:a62:7f11:: with SMTP id a17mr8426547pfd.36.1590048036415; 
 Thu, 21 May 2020 01:00:36 -0700 (PDT)
MIME-Version: 1.0
References: <12fbe3f5c6a16c5f3447adbc09fe27ceb2b16823.1589625807.git.mchehab+huawei@kernel.org>
 <20200517103659.GS17578@paasikivi.fi.intel.com>
 <20200520094400.5137e7f2@coco.lan>
 <20200520082608.GV20066@paasikivi.fi.intel.com>
 <20200520131830.3ff45919@coco.lan>
In-Reply-To: <20200520131830.3ff45919@coco.lan>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 21 May 2020 11:00:19 +0300
Message-ID: <CAHp75VduEGyzobm0hkXzWmFfZb-uMAEWG-wc89b7M7zVzZ_4LA@mail.gmail.com>
Subject: Re: [PATCH] media: ipu3: add a module to probe sensors via ACPI
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, 
 "Krogerus, Heikki" <heikki.krogerus@linux.intel.com>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>,
 Tian Shu Qiu <tian.shu.qiu@intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

+Cc: Heikki (swnode expert)

On Wed, May 20, 2020 at 2:19 PM Mauro Carvalho Chehab
<mchehab+huawei@kernel.org> wrote:
> Em Wed, 20 May 2020 11:26:08 +0300
> Sakari Ailus <sakari.ailus@linux.intel.com> escreveu:

...

> As I said, the problem is not probing the sensor via ACPI, but, instead,
> to be able receive platform-specific data.

There is no problem with swnodes, except missing parts (*).
I have Skylake laptop with IPU3 and with half-baked ACPI tables, but
since we have drivers in place with fwnode support, we only need to
recreate fwnode graph in some board file to compensate the gap in
ACPI.

*) Missing part is graph support for swnodes. With that done it will
be feasible to achieve the rest.
I forgot if we have anything for this already done. Heikki?

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
