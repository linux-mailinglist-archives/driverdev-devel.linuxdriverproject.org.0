Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 753D052FA90
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 May 2022 12:09:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F9A140AF8;
	Sat, 21 May 2022 10:09:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DygYJvHQpZjz; Sat, 21 May 2022 10:09:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA8E94060C;
	Sat, 21 May 2022 10:09:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 038511BF873
 for <devel@linuxdriverproject.org>; Sat, 21 May 2022 10:09:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E691241C0D
 for <devel@linuxdriverproject.org>; Sat, 21 May 2022 10:09:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ngt0xRMJRElG for <devel@linuxdriverproject.org>;
 Sat, 21 May 2022 10:09:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 29E8E41C0C
 for <devel@driverdev.osuosl.org>; Sat, 21 May 2022 10:09:39 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id t25so18054885lfg.7
 for <devel@driverdev.osuosl.org>; Sat, 21 May 2022 03:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=SvKsWt9LONNBbmyn76CUaIRFpx6XrGejj9uupqUqu0c=;
 b=lmM8YqjiXMr/uUGRFIGZkYQS98FeJHg7vtgBPx4UP85fUOzMMNywyjlbDEMdW6k/Ms
 ZfBorFzeYfRIukHwM7wvT/Yi3or/w1b3LLAvdcmU+HMvm0pSzYPSQ5YWYFMPt51GdkIs
 VNI6ZjJ5WhDyrCZghGyuWqow6kTusrijyOjJL7C829JEpFV6sK1JGpYeCEbPuisERfuq
 zUbM5/PsaaHcF9+bNfqql6PhqOSVNoU0OUhQPH/YKhGOGiFo35OtH9BE4WT3iiUhPEUY
 1rcknD51RpMPUAJqa8vXuzmorkaCSsOSvw40D4e874QOw+ZjOEeAoo/I8MDo5pwhJqma
 lrmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=SvKsWt9LONNBbmyn76CUaIRFpx6XrGejj9uupqUqu0c=;
 b=GOUxYk7bsw6DlC5mN2VKSkc/CMgaf6exzcVLvP/lgZ5lwvAUY8elPEYGuxeOt2+wQh
 4GBdYLYJe6OSE8zGUoQA61HQrQ1XPTnQJafkrNnAezBnDYzLRE09+6aFHK5X9SUPGHM2
 ZfBMTAhBNLjhY2EQiQMxKrQiBdV+ySkRs30RKtT5ElPtiOwxOXuGzYo97bxbT4JyQH2G
 ayzrbrusOzByp+9YLgG0abBWlXPOcPGfnlq+Ncv48yMUWL1iAV1GCsAeuDZzoNCsLRtC
 hDkIW7KLMgHNweGHXbHL7Op3HNw2IUp3pLJGWPh8wBAhzxOgDFK/38lr/MmGt5TKflO8
 puHA==
X-Gm-Message-State: AOAM5300gvgNK+PDct8z0wMqf2xZWYkLsJVFPIOuCJkvyyeJeZ1eai5v
 /IlL6ovBl9h+/AR2EcZ0bzHC6hDpVt/IPAu6Za0=
X-Google-Smtp-Source: ABdhPJyQJNT7A+kmtNaYj56wtkakoLVwpOgPyeyaGc6G/blMQY+W/SgFpTM+lNTMxNAnQoqsxPMop9VwA+gXYX5LroA=
X-Received: by 2002:a19:6005:0:b0:477:bb1a:b2eb with SMTP id
 u5-20020a196005000000b00477bb1ab2ebmr9903815lfb.335.1653127776772; Sat, 21
 May 2022 03:09:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6512:2f4:0:0:0:0 with HTTP; Sat, 21 May 2022 03:09:36
 -0700 (PDT)
From: zanda vermaelen <zandavermaelen2@gmail.com>
Date: Sat, 21 May 2022 12:09:36 +0200
X-Google-Sender-Auth: -nlxi0DTrGFy535OqQTIJoS2Cf4
Message-ID: <CALQADQAUrc_e6--Macadb9tMi2ZhcFNqR0ejqPYSRzRWBOefPA@mail.gmail.com>
Subject: hello
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
I haven't gotten a reply from u after my last email
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
