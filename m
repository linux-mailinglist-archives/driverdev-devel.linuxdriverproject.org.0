Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7044BCCE9
	for <lists+driverdev-devel@lfdr.de>; Sun, 20 Feb 2022 08:05:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3611640386;
	Sun, 20 Feb 2022 07:05:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wj3fkjHdA3HP; Sun, 20 Feb 2022 07:05:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C12A640004;
	Sun, 20 Feb 2022 07:05:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2385B1BF869
 for <devel@linuxdriverproject.org>; Sun, 20 Feb 2022 07:05:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 10EF240386
 for <devel@linuxdriverproject.org>; Sun, 20 Feb 2022 07:05:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Lb0oaQEw6Zt for <devel@linuxdriverproject.org>;
 Sun, 20 Feb 2022 07:05:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2FEC740004
 for <devel@driverdev.osuosl.org>; Sun, 20 Feb 2022 07:05:04 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id p9so21515692wra.12
 for <devel@driverdev.osuosl.org>; Sat, 19 Feb 2022 23:05:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=SZlflNwJM/FoSzNidwvG3Q12/AiRGSJaNEWCCSkms7g=;
 b=GY/VSEkmxOvIpgx6mgFh6DQ/PrpQIE0Pg+/HGSXn6xoVYoHikO9V2Mjy9wLlOqi6c8
 C+VDDJzJ7hQCJW0T+kHG5YhbMxc4yD0Ik3JJGbQItDnQH3+bnyozQBhkdv/kSCMyQ29L
 ZmS29wQYungKOxIy3tXB/uJJBtKj5DL61jS40fbS4CVeR+vuYuZtCX7+M+52LBNl+yuk
 /phLaLqjyT4AQfiEMxVkK1uvHkHzw7t4SQfUWH9XUdeVOLenVTdOsWSBnR2psicSI26H
 74PMJIoBsllQ4C9OKswjVJVbzsXMhdXF6+ou4DvTlOEkgaPGOJdeZB1lAxPVfEhL07RG
 s3yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=SZlflNwJM/FoSzNidwvG3Q12/AiRGSJaNEWCCSkms7g=;
 b=LeXr7am6GOOqoLI0YH1OW45jyesZWOTfrnLAzPxdXCLwx5eVSNG2EnOsPKg2dI2xZw
 vK+yds5iGgVQkC372ZRW5urwGblDueuAh5GVbCLrqkzj9MQvmV3RJ5eQiWU3wJuAcW6r
 VYfcWIr04tCXUhqkG2GBWyYfHNxlcLpmVn/r9AZQBA8l2nu3YLkRPIQYdsCaVglbMEGz
 gNvQyvua5ANtnl4gfPmRliVXEYfabv9MxExvCPhD4pNypM6KJKWByQXsC3orMtxInUA3
 Bw4Fathya6EPD3SRimGGDCFebfM2T+QcvZuJUTtDNyeC1pHJnK7LV24sizDG5AYIPq66
 CRmg==
X-Gm-Message-State: AOAM530i6VT/jKmTeLnfa6br9xGyNkOQJezyaLOjl17nFVJDfD76Yf3h
 zmBMTqU+q3weB1juEnKwkDHVTnpl52EkZXNOl1M=
X-Google-Smtp-Source: ABdhPJwYQ8mFWdcQV+3hxm6BE2mL1El8TbyricR17n7guMOZrgJsqhs1gOYv3qs+bjVLTQRUswFvyCXzX5VdKDMtUhg=
X-Received: by 2002:a5d:4a12:0:b0:1e4:9fa1:beb9 with SMTP id
 m18-20020a5d4a12000000b001e49fa1beb9mr11516376wrq.81.1645340702156; Sat, 19
 Feb 2022 23:05:02 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:adf:c454:0:0:0:0:0 with HTTP; Sat, 19 Feb 2022 23:05:01
 -0800 (PST)
From: Hannah Johnson <hannahjohnson8856@gmail.com>
Date: Sun, 20 Feb 2022 07:05:01 +0000
X-Google-Sender-Auth: HcLXe4tRYojUv4VfMa-lJza90QY
Message-ID: <CA+pBdK7ofbKbk96CM__QsZH9EM_V+id6xT2j7BFmqqSH2F=2sw@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Hello
Nice to meet you
my name is Hannah Johnson i will be glad if we get to know each other more
better and share pictures i am  expecting your reply
thank you
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
