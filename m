Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA701E084F
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 May 2020 09:59:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C3ED18651D;
	Mon, 25 May 2020 07:59:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6XPu5fsERwLr; Mon, 25 May 2020 07:59:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D332486352;
	Mon, 25 May 2020 07:59:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 93E8C1BF20D
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 07:59:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8EAFE85A46
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 07:59:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 16dWtKdQbaWu for <devel@linuxdriverproject.org>;
 Mon, 25 May 2020 07:59:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C1E48859EA
 for <devel@driverdev.osuosl.org>; Mon, 25 May 2020 07:59:22 +0000 (UTC)
IronPort-SDR: ovcHdbBdTmEf2xibCol4CjDqwpDIKjFdLUf9XJN1ynzFLyXJMuSZ8XDP1T9/9I5YzcqRun8u9y
 hKUOT2oM5CHw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 00:59:22 -0700
IronPort-SDR: JCflhIxsquaU9jhCHP8S8Po3dtELmDzOwNyYpv6d/pEWqukzelsjKP1kXl6JsOwTICJ595Zn0q
 sqklKAb4vz8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,432,1583222400"; d="scan'208";a="375366423"
Received: from kuha.fi.intel.com ([10.237.72.162])
 by fmsmga001.fm.intel.com with SMTP; 25 May 2020 00:59:19 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation);
 Mon, 25 May 2020 10:59:18 +0300
Date: Mon, 25 May 2020 10:59:18 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH] media: ipu3: add a module to probe sensors via ACPI
Message-ID: <20200525075918.GE1910854@kuha.fi.intel.com>
References: <12fbe3f5c6a16c5f3447adbc09fe27ceb2b16823.1589625807.git.mchehab+huawei@kernel.org>
 <20200517103659.GS17578@paasikivi.fi.intel.com>
 <20200520094400.5137e7f2@coco.lan>
 <20200520082608.GV20066@paasikivi.fi.intel.com>
 <20200520131830.3ff45919@coco.lan>
 <CAHp75VduEGyzobm0hkXzWmFfZb-uMAEWG-wc89b7M7zVzZ_4LA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHp75VduEGyzobm0hkXzWmFfZb-uMAEWG-wc89b7M7zVzZ_4LA@mail.gmail.com>
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
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>,
 Tian Shu Qiu <tian.shu.qiu@intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 21, 2020 at 11:00:19AM +0300, Andy Shevchenko wrote:
> +Cc: Heikki (swnode expert)
> 
> On Wed, May 20, 2020 at 2:19 PM Mauro Carvalho Chehab
> <mchehab+huawei@kernel.org> wrote:
> > Em Wed, 20 May 2020 11:26:08 +0300
> > Sakari Ailus <sakari.ailus@linux.intel.com> escreveu:
> 
> ...
> 
> > As I said, the problem is not probing the sensor via ACPI, but, instead,
> > to be able receive platform-specific data.
> 
> There is no problem with swnodes, except missing parts (*).
> I have Skylake laptop with IPU3 and with half-baked ACPI tables, but
> since we have drivers in place with fwnode support, we only need to
> recreate fwnode graph in some board file to compensate the gap in
> ACPI.
> 
> *) Missing part is graph support for swnodes. With that done it will
> be feasible to achieve the rest.
> I forgot if we have anything for this already done. Heikki?

I did implement the fwnode_graph* callbacks for swnodes, but I need to
rebase that patch on top of Dmitry's reference property changes.

thanks,

-- 
heikki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
