Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 747093CC50F
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Jul 2021 19:51:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C42BC60690;
	Sat, 17 Jul 2021 17:51:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6KdDaUETlzpb; Sat, 17 Jul 2021 17:51:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3CE6860643;
	Sat, 17 Jul 2021 17:51:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 26A8D1BF3A0
 for <devel@linuxdriverproject.org>; Sat, 17 Jul 2021 17:51:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0CDB84148E
 for <devel@linuxdriverproject.org>; Sat, 17 Jul 2021 17:51:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ArV7rzL8YRVR for <devel@linuxdriverproject.org>;
 Sat, 17 Jul 2021 17:51:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com
 [IPv6:2607:f8b0:4864:20::d42])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 58F7A4147F
 for <devel@driverdev.osuosl.org>; Sat, 17 Jul 2021 17:51:07 +0000 (UTC)
Received: by mail-io1-xd42.google.com with SMTP id x10so14578998ion.9
 for <devel@driverdev.osuosl.org>; Sat, 17 Jul 2021 10:51:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=jHMLZcMzsGmvH2VdfTqNz4UIwl5qhpPJebMRd8Dl7+U=;
 b=o1Jw3TEA3pugJNHqdhIif66f2WfIMKdpTCH5d6KzemjokqCe4aEerveVoUtpVwYJcD
 wNzmmsVsQPmlXk2uraIvuNLcabMoGnCX8jeJJBaj54p/tEWWSbapCpirF9bWQmZOBg6k
 tlIJU4kSSF+VhtAoPUWTjQL4gPtGlY6xZJIdtsT2+2dfxzaEoOZWgRwUCNGxgMzQCixX
 hvV7lQYwqhE5T5QriD40l3lFL9AL15cDgjGw/OcrqcOnl5i1CsK3kc1eOPqXm66BGdkC
 gPcZUWJCWzk4yauXdU3iEIbwyht38K8O300UqNsu5auxSa+c2DZ1AjfJJGqBXgTgDsb4
 VVKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=jHMLZcMzsGmvH2VdfTqNz4UIwl5qhpPJebMRd8Dl7+U=;
 b=SdgV38T6aqeG1uK4WVd22b3ggPXVlV2jx/ZjPpOiSuflBylYH5uRZ4jAtS/0h1lHAC
 3ZaX5jnrHb0IstIxhMJIoz6H6RWlUkAVCR9VPfyXSc0z3YBR4aYNgSxEs7wkhL+s9NiH
 wOEhjDME0Diuepi1qcSwt1t24FKLII7LyjmJwjAfeZVqrvKksbfQfE22Oczv5Ur+yXkh
 ZJRy6+ADVS8fed4zN49OtOkcS2/6j8o72KHGpC91AxJ0PfK3qQQWEJz0IM/oof39DDld
 te8bnrEQo5ToPWzRQ3B6yH1KweKHe0ACWKdPIztKTcSdGk67+3h5jyfLktu036sChhDl
 aBFA==
X-Gm-Message-State: AOAM53144rPs5TBLGfruXjnTB9oR9Kuw4Z4rYfbe7SBbxotJNMIPUt2Z
 jPdiwn7YRT8e835z8/is/Ce/molN5fEGJdWJFRg=
X-Google-Smtp-Source: ABdhPJzEErk4+EzPB4HuEGK7fwaVK8oQ/ul1tqNQ21zB0ZfwVBsUCycyU8W2+x4z+NldUA7Qz0pyO/AumXu2PxeB+vY=
X-Received: by 2002:a6b:6f11:: with SMTP id k17mr11892941ioc.114.1626544266461; 
 Sat, 17 Jul 2021 10:51:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a92:6e03:0:0:0:0:0 with HTTP; Sat, 17 Jul 2021 10:51:06
 -0700 (PDT)
From: "Mrs. bill Chantal" <dorisashong685@gmail.com>
Date: Sat, 17 Jul 2021 17:51:06 +0000
Message-ID: <CAPUGxUoiEZ4Fb5OstWbgErAzZdjD1cm3yVZL7Qzhic7GFozV2w@mail.gmail.com>
Subject: ATM VISA CARD COMPENSATED
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
Reply-To: Bill.Chantal.Lawrence20@europe.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend

You have been compensated with the sum of 4.4 million dollars in this
united nation the payment will be Issue into ATM visa card and send to
you from the Santander bank in Spain we need your address passport and
your whatsapp number
Thanks

Mrs. bill Chantal
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
