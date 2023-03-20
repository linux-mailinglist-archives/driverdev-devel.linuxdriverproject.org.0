Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A33B6C1128
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Mar 2023 12:50:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EE6DA4027D;
	Mon, 20 Mar 2023 11:50:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE6DA4027D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VO8a4ezSZx-F; Mon, 20 Mar 2023 11:50:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B02B408DB;
	Mon, 20 Mar 2023 11:50:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B02B408DB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BA1551BF954
 for <devel@linuxdriverproject.org>; Mon, 20 Mar 2023 11:49:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 939894027D
 for <devel@linuxdriverproject.org>; Mon, 20 Mar 2023 11:49:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 939894027D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5wr68tpRcr_Y for <devel@linuxdriverproject.org>;
 Mon, 20 Mar 2023 11:49:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B450340088
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B450340088
 for <devel@driverdev.osuosl.org>; Mon, 20 Mar 2023 11:49:55 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id y15so14508658lfa.7
 for <devel@driverdev.osuosl.org>; Mon, 20 Mar 2023 04:49:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679312993;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=oDVdWICwavrWQ8UAVYhe8ynFXsBBW1vVQ7W08zgiq24=;
 b=6Z+GnYz/uqZ4llMUt3+xyo2QyqLf5M3L9MqLWVJl0tCcOEvaf8K7Ss4NJ0e9KBTfGy
 27eAha1WVHmeKuj9NQVwUKMC22aTklVxvBbXenVRvHhp+0StuLISYS34YnwY1akB3sdx
 KlBgde6ZjFwh90laedUvOaQWm4+TMl4QF/giTXOiJ84vqZiaXQWDxakoPXP9Ba37AC7Q
 VzYMlcVFmjYduxvdHC/t7SEqCJHSQp3sFJf+pnmskwOeFL0IryTGRRxfY+UmD+ma3bc0
 arQxeBRRGmV4W8r6l5q4sBGTJ9wyorH10ohPk0YStkjJ+bZ/qO/5wU0v4eVU3Bxb449y
 ryhw==
X-Gm-Message-State: AO0yUKUIlz3/IbE1vA6BH0RfmanfF6qmPBftb7d43MbCDCyVOpSEflHq
 1CdkZ85qaorT1cjpit4dYDLgdQrnBz55QPtbvns=
X-Google-Smtp-Source: AK7set/uN5BxZED4hHj33Nj1jruAulSNolyqvRDj7ECtsykKPrnowhYtzrbwDXKxJ4RrHGuRJUKK/2Ns1F70/sdcxWM=
X-Received: by 2002:ac2:46c8:0:b0:4d5:ca32:6ed8 with SMTP id
 p8-20020ac246c8000000b004d5ca326ed8mr3548609lfo.6.1679312993364; Mon, 20 Mar
 2023 04:49:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:73ca:0:b0:222:5939:ed00 with HTTP; Mon, 20 Mar 2023
 04:49:53 -0700 (PDT)
From: nina coulibaly <ninacoulibaly214@gmail.com>
Date: Mon, 20 Mar 2023 04:49:53 -0700
Message-ID: <CAL5O4-EtwZwzjFmLGQ4bWPjhWYkgQooSgjV2UdKh+kvn16erxw@mail.gmail.com>
Subject: from nina coulibaly
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679312993;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=oDVdWICwavrWQ8UAVYhe8ynFXsBBW1vVQ7W08zgiq24=;
 b=IJMz0lfhdxemIzNhda2BMTeJxrc5hfxr1lxMcQ32S+mTyrpDxWXaPpzZ5wZpMFEmvV
 ZfCZPyz7oFoHORX+CE6eyBulPUHTvyLd3S5IU9xeqQE1tBuvylCcKgsC918+NmLMFnNA
 Gtwz03LuN6I6bj+Dixjg5vvgGLgIANTxvqOQZXln1MReI8KSJLKTNjkdNGwlGxu9IiKy
 EZjirZftHm1RkC/3kFaAURCH8AxlyvgIbAu4IljDN/r3RJolq1a0ZfpIeKiVTQ8THqrF
 XZQvG2TgSmuZW6Eh8wEwjlBfuVitEJAKkUKSgVwd2FJNBWcthI2gg8g+qW4gywQHWE8n
 aaUw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=IJMz0lfh
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
Reply-To: contact.ninacoulibaly@inbox.eu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear,

I am interested to invest with you in your country with total trust
and i hope you will give me total support, sincerity and commitment.
Please get back to me as soon as possible so that i can give you my
proposed details of funding and others.

Best Regards.

Mrs Nina Coulibaly
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
