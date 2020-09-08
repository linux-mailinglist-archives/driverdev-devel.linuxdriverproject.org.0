Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A3B2615AC
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Sep 2020 18:54:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9673B86C8C;
	Tue,  8 Sep 2020 16:54:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s3uZWECxa10B; Tue,  8 Sep 2020 16:54:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8552786B9A;
	Tue,  8 Sep 2020 16:54:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 651631BF349
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 16:54:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5ABB02DFF8
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 16:54:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gUqz6XLVcTw8 for <devel@linuxdriverproject.org>;
 Tue,  8 Sep 2020 16:54:37 +0000 (UTC)
X-Greylist: delayed 00:10:05 by SQLgrey-1.7.6
Received: from dmz.c-home.cz (gw.c-home.cz [89.24.150.100])
 by silver.osuosl.org (Postfix) with ESMTP id 89E7C22802
 for <devel@driverdev.osuosl.org>; Tue,  8 Sep 2020 16:54:36 +0000 (UTC)
Received: from dmz.c-home.cz (localhost [127.0.0.1])
 by dmz.c-home.cz (8.14.4+Sun/8.14.4) with ESMTP id 088GiCUd007906;
 Tue, 8 Sep 2020 18:44:17 +0200 (CEST)
Received: from localhost (martin@localhost)
 by dmz.c-home.cz (8.14.4+Sun/8.14.4/Submit) with ESMTP id 088Gi6FG007903;
 Tue, 8 Sep 2020 18:44:07 +0200 (CEST)
X-Authentication-Warning: dmz.c-home.cz: martin owned process doing -bs
Date: Tue, 8 Sep 2020 18:44:06 +0200 (CEST)
From: Martin Cerveny <martin@c-home.cz>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 0/6] ARM: dts: sun8i: v3s: Enable video decoder
In-Reply-To: <20200908062327.7o4abjnosvghtafy@gilmour.lan>
Message-ID: <alpine.GSO.2.00.2009081840380.6717@dmz.c-home.cz>
References: <20200904200112.5563-1-m.cerveny@computer.org>
 <20200908062327.7o4abjnosvghtafy@gilmour.lan>
User-Agent: Alpine 2.00 (GSO 1167 2008-08-23)
MIME-Version: 1.0
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
Reply-To: Martin Cerveny <M.Cerveny@computer.org>
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Martin Cerveny <m.cerveny@computer.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello.

On Tue, 8 Sep 2020, Maxime Ripard wrote:
> On Fri, Sep 04, 2020 at 10:01:06PM +0200, Martin Cerveny wrote:
>> First patch extends cedrus capability to all decoders
>> because V3s missing MPEG2 decoder.
>>
>> Next two patches add system control node (SRAM C1) and
>> next three patches add support for Cedrus VPU.
>
> How was it tested?

On V3s with LCD and bootlin raw v4l2 api test:
- https://github.com/mcerveny/linux/tree/v3s_videocodec_v3
- https://github.com/mcerveny/v4l2-request-test

Regards.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
