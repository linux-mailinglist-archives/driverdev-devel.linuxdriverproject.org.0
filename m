Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6266BCCC59
	for <lists+driverdev-devel@lfdr.de>; Sat,  5 Oct 2019 20:40:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 606FC8776E;
	Sat,  5 Oct 2019 18:40:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jBm97pCwKKxe; Sat,  5 Oct 2019 18:40:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE5608773E;
	Sat,  5 Oct 2019 18:40:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 734F31BF30D
 for <devel@linuxdriverproject.org>; Sat,  5 Oct 2019 18:40:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6FF6486208
 for <devel@linuxdriverproject.org>; Sat,  5 Oct 2019 18:40:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CXeHByJWoAYp for <devel@linuxdriverproject.org>;
 Sat,  5 Oct 2019 18:40:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5E7A385F53
 for <devel@driverdev.osuosl.org>; Sat,  5 Oct 2019 18:40:38 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A3478222CA;
 Sat,  5 Oct 2019 18:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570300838;
 bh=RWuY0RSvkUj2zaP9FkesiWE2O7HQPq1rvX2ddcue8vk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GuDQBTf27tJ/syv9eY4jSxOcMtKfYqkusdHd0rK27nz/xQvJbJ0PKX5ktBzm9RAwY
 +60XGaBoNV66J2AKN5x/aokPrI+lzXEpNe6Jf0M5DsyuSLJGXS+FHra9LbCqE3EPYT
 0NCtMa+xZZWjnpRhaqWQodNHEn/NUGr5xqOTJ8oE=
Date: Sat, 5 Oct 2019 20:40:35 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [PATCH] staging: vt6655: Fix memory leak in vt6655_probe
Message-ID: <20191005184035.GA2062613@kroah.com>
References: <20191004200319.22394-1-navid.emamdoost@gmail.com>
 <1d0ba4c6-99ed-e2c9-48a2-ce34b0042876@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1d0ba4c6-99ed-e2c9-48a2-ce34b0042876@web.de>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 kernel-janitors@vger.kernel.org, Kangjie Lu <kjlu@umn.edu>,
 linux-kernel@vger.kernel.org, Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Navid Emamdoost <emamd001@umn.edu>,
 Forest Bond <forest@alittletooquiet.net>, Stephen McCamant <smccaman@umn.edu>,
 Navid Emamdoost <navid.emamdoost@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Oct 05, 2019 at 06:30:13PM +0200, Markus Elfring wrote:
> > In vt6655_probe, if vnt_init() fails the cleanup code needs to be called
> > like other error handling cases. The call to device_free_info() is
> > added.
> 
> Please improve this change description.

It is fine as-is, please do not confuse people.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
