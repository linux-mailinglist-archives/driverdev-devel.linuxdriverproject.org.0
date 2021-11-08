Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6625F447B37
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Nov 2021 08:36:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F1DF80E0D;
	Mon,  8 Nov 2021 07:36:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i1eWAcFxEkFj; Mon,  8 Nov 2021 07:36:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0469680DF9;
	Mon,  8 Nov 2021 07:36:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 51ECE1BF3A6
 for <devel@linuxdriverproject.org>; Mon,  8 Nov 2021 07:36:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4D47B400FC
 for <devel@linuxdriverproject.org>; Mon,  8 Nov 2021 07:36:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6n160xyCTUlw for <devel@linuxdriverproject.org>;
 Mon,  8 Nov 2021 07:36:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 96F9240212
 for <devel@driverdev.osuosl.org>; Mon,  8 Nov 2021 07:36:15 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id z21so13268074edb.5
 for <devel@driverdev.osuosl.org>; Sun, 07 Nov 2021 23:36:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=gS+G2bXPLTc8QV9oSOsVFPfildfSifO+gabOlUjPn+8=;
 b=fD0Bw3fRV4eYrDgSxFsI3hrOIOW5eHFOGjExJsHvKe1PJkTOA/Vd7hLKoQJHbDzpNl
 EQatN33cW5tZoc3rrJW3xjXjEN90S/PF00O3BqENlw+c0A+FbO7eSaEU3AM7mNMZqw/L
 PPQTfBk+oEtxTVxMgt0O1qYzqQgKzEydI4nr6y2IsrLy0Rf2AM5sSynqoQZHTM1GEWV7
 16cElo5bql33yYmZIxteIKGK5CY/ImEtro9y7gFlZXJXqFIJjehtYWWpht+ww04Bh+OZ
 TjLT1bAP0wgfciitD+ohAJXplu0Ud0y4hb2+S89AHxUp3HdVsl/l3apePqsUc0+8Dmk7
 ZoxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=gS+G2bXPLTc8QV9oSOsVFPfildfSifO+gabOlUjPn+8=;
 b=1DIDreYtK6t4NLCWLQ4w0JH/g6xyGT085ntbRqy7/bARF/kGd9FMjC9nRSxtwIyuE7
 sLdRM5BOYAtS1pv1hwSfal9q+GtUTQ8ex1YbHrNQ2s0JvGsVxmH73e2nU9apCPHZGhy8
 MmegCkmWcSXizLk1nrz5fTsnRLToYpTUtwLkuiF64oX4JALAOeHo/JXiXTTf+OcnhWHx
 OaQcx1syFNkfonBhrI/VR0BFfgQE7ORt9ENFS32kAvSyCuXQmdLhkjxH6KNo9anwMY08
 whLgmBhftYbVABXtzkwBdOqbRWNIZxEhyUNBWAW9evvAVMFLGx5jSH565xnbn8/YhNem
 DHEw==
X-Gm-Message-State: AOAM532dd3vB12jWH/HtZ4powolYwkcwzTMCIHzW6RiTX9Fdmyl3Rbpy
 FOSgIEyQg2M3zYi9BqtW9ezhB6xLpqRutDBptos=
X-Google-Smtp-Source: ABdhPJzy7lQA3Qt17kUNGJykbPHy1NnrMhPzc/xMAV3G0b9GHKXnLgS00/Mt3TTNFwRpHos9mBnH7CJHS81IynH2Ez0=
X-Received: by 2002:a17:907:a414:: with SMTP id
 sg20mr58789895ejc.183.1636356973453; 
 Sun, 07 Nov 2021 23:36:13 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a50:2501:0:0:0:0:0 with HTTP;
 Sun, 7 Nov 2021 23:36:13 -0800 (PST)
From: Maria Schaefler <ziskoraa@gmail.com>
Date: Mon, 8 Nov 2021 07:36:13 +0000
Message-ID: <CAJh0Fjg-6VfPFkQokpU5XxrEe2q501tY9=hfFi2YV1rhWp_MAQ@mail.gmail.com>
Subject: MY HEART CHOOSE YOU.
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
Reply-To: mariaschaefler@gmx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Given my current state of health, I have decided to donate what I
inherited from my late husband to you to help the poor and needy. I am
Mrs Maria Schaefler,a 57years old dying woman. I was diagnosed for
cancer about 2 years ago and I have few months to live according to
medical experts. Email me for my directives
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
