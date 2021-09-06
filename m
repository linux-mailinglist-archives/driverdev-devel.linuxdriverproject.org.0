Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B43B04019A7
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Sep 2021 12:19:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF74E40238;
	Mon,  6 Sep 2021 10:19:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jcc26w6mkrEl; Mon,  6 Sep 2021 10:19:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A61840211;
	Mon,  6 Sep 2021 10:19:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3ADC21BF308
 for <devel@linuxdriverproject.org>; Mon,  6 Sep 2021 10:19:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 26549400CF
 for <devel@linuxdriverproject.org>; Mon,  6 Sep 2021 10:19:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 69tbiTv8E-OZ for <devel@linuxdriverproject.org>;
 Mon,  6 Sep 2021 10:19:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6B4C94011A
 for <devel@driverdev.osuosl.org>; Mon,  6 Sep 2021 10:19:12 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id
 n14-20020a05600c3b8e00b002f8bd2f8ab6so1280098wms.5
 for <devel@driverdev.osuosl.org>; Mon, 06 Sep 2021 03:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=Q7Ln1Vncrd6KAn+mwBjI1o5g4azwtLC0MF/vF5ovvsQ=;
 b=MoPFprR9TfJ/YagCQ4CWphLdFOd9OrvMzDFJY3UleWPq2RfIVX73YEjXLolp60vgR2
 6wKpgMqCUrQoWBTCwqTLWV0KW8yOa6GiLmSxs4WZjoiKawfsreunbI2VAg02/nBOSDRt
 w/4BnRsQSj45OzH4ayWhTWQeQfTYHaHlcfYRqnvgceOb92vBFd6zg4H7ZR05vCC6G+q1
 d0iqatf0s70jumbyLrXK59NEGIvBSqRqj0uHA6LAOGPDk/NXhbuoXLhoa+MIV5aLWiV4
 vvKJ4TbfzFcjrZNgXXSii6lPE9wUW6tev2CZrJyPOvJgA/pQIe9q1W4P4oNwiBCGg4D2
 HaZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=Q7Ln1Vncrd6KAn+mwBjI1o5g4azwtLC0MF/vF5ovvsQ=;
 b=N3PmXOnuGIjk2X5JkKvBaiRakNZ+AMyVjm+hmIlqIKtNI9qYQ7rPVqzV0hZWM+ZQiv
 w+/kbY1I+KmAgeI4fqyw7+QvfaavrHwimqIadez/CTC8aF9//9F3UfMy/LDAO/O2BPZ+
 H7dpfb6NT2+g5bjiSF1hLO6XEHdKuQgrvJq3z0gaXzT0ZcCmzbUyRylBJ4ERVxJ31U8o
 Lr3QB1Kl1G5ZmeATZWvPRcLwSAlKFy8zKXIWNmySlJlkBHxMWx7XN9gXwHlcpxGUHbkT
 F7UL3QiEG8WZH/uqWzMHuXRLDis6gYUALRrQjyjfmQXncg+2Fk7d8il85hKjjUqXC52J
 hNPw==
X-Gm-Message-State: AOAM532xxyr9UG8D/ked459rDNAF4YW3LDS3Al0TO2YXM4ufkDFSp9XR
 o05MyFVcSmDVioGTnQ9MM+KukQ5k0CSnG4/CnGY=
X-Google-Smtp-Source: ABdhPJx2MJtFOSLHm5bsDsA2CdLcFtDHXU60zCd9SoNL7F9gXkZPr2CNTmx/UMLN1Nc7SIyGUoyI9A9/8Kxi1ICP4cM=
X-Received: by 2002:a7b:cd88:: with SMTP id y8mr10668065wmj.24.1630923550576; 
 Mon, 06 Sep 2021 03:19:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:6d4f:0:0:0:0:0 with HTTP;
 Mon, 6 Sep 2021 03:19:10 -0700 (PDT)
From: COVID-19 GLOBAL RELIEF FUND <shanestander444@gmail.com>
Date: Mon, 6 Sep 2021 03:19:10 -0700
Message-ID: <CAFBMRwvEuNoKnmEtaMeBw_4CWx+2xFc0zq-fuMoMa9krCxNP5Q@mail.gmail.com>
Subject: COVID-19 GLOBAL RELIEF FUND
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
Reply-To: covid19reliefdonationfunds09@usa.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
COVID-19 GLOBAL RELIEF FUND

 Your Email account was nominated for online donation of ($160,000.00)
United States dollar by WORLD HEALTH ORGANIZATION (W.H.O) for COVID
-19 pandemic corona virus.

ETF REF-##: 1124 -3200/5600/3460 Contact Dr. Sharon Chow She for your claim

Email us at (covid19reliefdonationfunds09@usa.com)
Whatsapp Number +14126956797
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
