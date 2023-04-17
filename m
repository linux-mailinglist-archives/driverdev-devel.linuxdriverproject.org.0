Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 671ED6E53D1
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Apr 2023 23:24:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5572381EF7;
	Mon, 17 Apr 2023 21:24:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5572381EF7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AllJ42qJMTQ2; Mon, 17 Apr 2023 21:24:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CDE881F45;
	Mon, 17 Apr 2023 21:24:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3CDE881F45
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 091511C40D6
 for <devel@linuxdriverproject.org>; Mon, 17 Apr 2023 21:24:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E377840650
 for <devel@linuxdriverproject.org>; Mon, 17 Apr 2023 21:24:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E377840650
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l1ALAu5TiF02 for <devel@linuxdriverproject.org>;
 Mon, 17 Apr 2023 21:24:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 922AF405C0
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 922AF405C0
 for <devel@driverdev.osuosl.org>; Mon, 17 Apr 2023 21:24:27 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 5b1f17b1804b1-3f0aabd1040so51895835e9.1
 for <devel@driverdev.osuosl.org>; Mon, 17 Apr 2023 14:24:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681766665; x=1684358665;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=4jlL8pzL6NVZbuVjV4h5KPilkuQmPMJRpXcDIhZ2tX0=;
 b=YsEBOK1Jow0NWwap/aQd1Kxyej+wqC/ttkQ2ogVQ/VM6fJBe7+GDZHxj16/g+1k4PU
 wGV+tm5m4HsTRNE29jOKKbGvvg1UdfaSQMX3wopx8Mz1uk0JZRvnmOeV8lu/dps6uXJg
 3XOf6Lpi/pSNMYO2M1nYuRSHYv3EXNS+oGNRjLihvZMulBRToVVz3Wv38JvRmP85dYJy
 rG/mWrejmqgiqlmPrYnrPLpPGk31YHr867ycV3TNE/YfDrAqwSmhuA0sIWEs/QtAANTA
 ly7Hz3OYrjhft3lECE/YzZ/IwqRFF3/TTbAhSjIkeFhZPjrGF+/SOMGkrEr6yLIl1bd5
 wjyg==
X-Gm-Message-State: AAQBX9fqIHdEn2429gzfDjf5hjUDHKTEuBeQ+k75wkNS4nOXKaaGV6DY
 QOXgQHozqDa/dc7eEndPx36Sm+ivtl9JHWFfqYo=
X-Google-Smtp-Source: AKy350a9icabki+1jkm3YTPo4E/jFVqvv7QnwigylF2yR3OXgHM3JwJiXiGMG2eJj3Osq3DE79ycmjUgZ642CUc8Gvg=
X-Received: by 2002:a5d:504b:0:b0:2f6:4c9c:6b2a with SMTP id
 h11-20020a5d504b000000b002f64c9c6b2amr254659wrt.0.1681766665582; Mon, 17 Apr
 2023 14:24:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:adf:ce8d:0:b0:2ef:12c5:56c2 with HTTP; Mon, 17 Apr 2023
 14:24:25 -0700 (PDT)
From: nina coulibaly <regionalmanager.nina01@gmail.com>
Date: Mon, 17 Apr 2023 14:24:25 -0700
Message-ID: <CADndTXsL8uLGy4UxZ0jxbddtWrF9mVNCoZhvsAwVqMrV+afocQ@mail.gmail.com>
Subject: from nina coulibaly
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1681766665; x=1684358665;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=4jlL8pzL6NVZbuVjV4h5KPilkuQmPMJRpXcDIhZ2tX0=;
 b=oTNwCLTqNNKz4RziYHhHAJaTNpV05Yda5eSdu/2B4KfuKd3v4WViEkuPRq9uU0T8ZB
 TKiAUY+M6PCGG6FgOLiAPrCykoLVmp5Ig3OpPF8vV1kbicX4QXcWQD8Jxyck/MwQgWkV
 JNMleDMCi73rWCZY8cjv2K4CcSofFM7poJ97RndGeQz6VfcY52jNYTn0YmUNME36gc9G
 XtxTivvsD1IM69EiZe7MwD/3TDD9wQkvSgIjlR1sUN4I60XT7Vixdfu91Tv23cY6n2mm
 /1y6X2yST9ykymKXZX97sbHG8e3o9l7Esftuy0ZPoDKop31Pce6ol7HBGv1/7jYFaPxv
 dUdQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=oTNwCLTq
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
Reply-To: ninacoulibaly03@myself.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear,

Please grant me permission to share a very crucial discussion with
you.I am looking forward to hearing from you at your earliest
convenience.

Mrs. Nina Coulibaly
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
