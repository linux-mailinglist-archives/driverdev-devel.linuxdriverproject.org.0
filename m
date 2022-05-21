Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED7D52FA8F
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 May 2022 12:09:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EDCA784556;
	Sat, 21 May 2022 10:09:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VAVu9dFhcZ_Y; Sat, 21 May 2022 10:09:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1BEA844F4;
	Sat, 21 May 2022 10:09:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C30CF1BF39F
 for <devel@linuxdriverproject.org>; Sat, 21 May 2022 10:09:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BFCFE84556
 for <devel@linuxdriverproject.org>; Sat, 21 May 2022 10:09:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I0oPp3gmRSE8 for <devel@linuxdriverproject.org>;
 Sat, 21 May 2022 10:09:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1C0F0844F4
 for <devel@linuxdriverproject.org>; Sat, 21 May 2022 10:09:39 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id v8so16115991lfd.8
 for <devel@linuxdriverproject.org>; Sat, 21 May 2022 03:09:38 -0700 (PDT)
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
 b=pKzoS4QnLWLxmLO3mGgZQPNe50k0X4j4s3mUaWsHesgXmM4zeVn0dUZHZivXnJIkXS
 NHzmKU5+/Hoc12PN47N14ruL32m6kgLpZD/LHzOMXQp9cEJW5jyvsrQFIU8X+l2ZJkWm
 Wchdii+9JIYL9phYdKejs/Sdb7jZVc1g7MoWI8r8WGIqXL1dmF8KQO7rhnl96p+dCdzs
 Vmjfa+CB31JLLQiG371q7gvJdPHGjXVY82IrcrLpeGiCiSJI6K/bkwVzM0zlyB1zfGSz
 HO/CUF15pyVXbWQQjF3bRJUGlY1DLbZUYyjGtIw2gR4QHFmQ6ZVDj3wr0kVnJgGBdhz0
 pORQ==
X-Gm-Message-State: AOAM531fdR7hU5MSVdXFRnh8Nxp+A846zfZr1sT1jfDVWdfOQJgZwI7m
 9NGL1u1A2dhrnKesF6hf+KmxxYteI9tORjo5WEU=
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
