Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E44932B1359
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Nov 2020 01:40:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1E86787377;
	Fri, 13 Nov 2020 00:40:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id erDDbg5Vou9F; Fri, 13 Nov 2020 00:40:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1C8AC86E31;
	Fri, 13 Nov 2020 00:40:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 484581BF9BA
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 00:40:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 446D587829
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 00:40:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id znPmL4cyyfFx for <devel@linuxdriverproject.org>;
 Fri, 13 Nov 2020 00:40:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B5B6B87826
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 00:40:20 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id s10so8095648ioe.1
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 16:40:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KwsRYTIelL+rQfaWByBY2jDX2TK6VO5EvbvbPDRhoZM=;
 b=ItHGWFKBEnfm/3yEFqHr4tpisqmr5LgUINwjxMECLYJ5Sd0mrylFpr6fulRr09T39A
 FUUYt+sm3Fd7f8p2rl+B7maioKkcie9N4EhRWXwPF/pYXsLT5Xp0px5KMDQKOiAHzFuz
 DmF4vKn9hm5xsAeym/TPrhjYeBX4dVXeP7EA/BBrlVnqHUaIcLmz+AF/DQPoywiSDnm6
 oeFc0khKuJTd4ef7M7+M10XxOqHjf9ApbH+foEsKEUUmO6gN2bjEGJIk3Z7e4UrEaEHK
 OTdYpoph/DPIviUOLUzu4NDn/o+02lX26JiHJmJqB09rii4ME1C3QRIepAziPJ2/pHG/
 IpoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KwsRYTIelL+rQfaWByBY2jDX2TK6VO5EvbvbPDRhoZM=;
 b=IraXo13EhlqOUeWALdwQKdYI2JpbSSFjh65IUlPYnQIoKJnc0zuVTr4cZsYTe2NGQJ
 W/zr7v5EbxAZ4fp+1JerNw71jFaSpnq8V1eyVxSHQSBIm8WKfB9a8QkCT0MfvTJwaX8h
 eZxzKKRb9fACaDFxaYz4vYXrM9nM+0U0TYtTvBPcHrcAOgK2xMbh70ZkV7xV9YUJeOzO
 2ICzY/PgY37WaMQJq8evD79KO9UJ6UlR7d+ZbO83tjDObR2R7AyNdQSmZ43vS4FNr2iq
 7p/w3slyETmgFzOvsi9Unya2y04QkQsyYUo813EUBBHD2WL2PLvbN4k4uy6A6wXtvmV3
 avOQ==
X-Gm-Message-State: AOAM533bmR5ImMvR/7JMEp/7X1U5e47u9Rx+ht8OuPZVsyXUdlyF9RPr
 uSFZPNzgyPKRtXQuDJ8MAXqOktE8wW/c99K5oyk=
X-Google-Smtp-Source: ABdhPJzZnfm6M/D6C6FDUIUrc/BiG76DixcJoRURxDV7ng30jOeHO75IwXPePu7T8eJ0AmyOnQSk8e26ZTZDyc2lAvM=
X-Received: by 2002:a02:c995:: with SMTP id b21mr1977945jap.65.1605228019942; 
 Thu, 12 Nov 2020 16:40:19 -0800 (PST)
MIME-Version: 1.0
References: <20201111163013.29412-1-sergio.paracuellos@gmail.com>
 <CAJsYDVJtPqd-aPjJZFC76R2fbv1i=tVzRR7S1VFAMzp1QcPbiQ@mail.gmail.com>
 <CAJsYDVKWuygjbBErQt1B5XD8Bp06-TdrziBzDdYmMGhU_8X-aA@mail.gmail.com>
 <CAMhs-H85RCK=a_y+fVm-oR3hOEfr=rtVcLvX09YH4F65enz3oA@mail.gmail.com>
In-Reply-To: <CAMhs-H85RCK=a_y+fVm-oR3hOEfr=rtVcLvX09YH4F65enz3oA@mail.gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Fri, 13 Nov 2020 08:40:09 +0800
Message-ID: <CAJsYDV+Gm-0HpvE7W8iG=t5JT+whrQjerRUT65eXxv2av9160A@mail.gmail.com>
Subject: Re: [PATCH 0/7] MIPS: ralink: add CPU clock detection and clock gate
 driver for MT7621
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
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
Cc: Weijie Gao <hackpascal@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>, jiaxun.yang@flygoat.com,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, John Crispin <john@phrozen.org>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Nov 12, 2020 at 1:23 PM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
>
> To avoid weird behaviour because of some drivers are
> not using properly clocks we have the CLK_IGNORED_UNUSED, which as you
> can see is currently being used in my code. Using that all seems to
> work as expected as it is now.

The whole point of having a clock gate driver is to gate unused
clocks to save (maybe a tiny bit of) power. It's other peripheral
drivers' fault that it doesn't enable clocks properly and we shouldn't
just work-around the problem in the clock driver by disallowing auto
clock gating.

-- 
Regards,
Chuanhong Guo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
