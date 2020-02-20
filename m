Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CE8165AF1
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Feb 2020 11:00:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1EDBF85F34;
	Thu, 20 Feb 2020 10:00:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uxtE_t8NhwOA; Thu, 20 Feb 2020 10:00:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1D16C85EF1;
	Thu, 20 Feb 2020 10:00:55 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B45941BF5B5
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Feb 2020 10:00:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ACD5A87A52
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Feb 2020 10:00:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n4PzrutC31DT
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Feb 2020 10:00:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 407B987A15
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Feb 2020 10:00:52 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id e8so1355111plt.9
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Feb 2020 02:00:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=xsUbPWAhYtsZRE8nHbpZ90/dMr+6ACJOvf/o3gzcGwM=;
 b=HNr12GxrjzeTq5ngoCzqSt/oCz/awtVKQjQZSLSC8wH7YBMgy25gbBZAhW+Y0cyQtN
 kKOB6xx7VSxXLMJyPV/Iw9cK7Vpbqp3v5jLq0Zvd6h+PBJbitmup3n2IFd9ivmo89YEc
 /egZXb6yTbPIlbWpBfeXIKwkL7oS7K3OMrKAxyuXOjiC7/P/VIk23D6A59RJPNAClTBn
 +zj7jGrC7+bzH45DlaK20O1eBGRgn2fMPgq7Wa1mBm1zmtrzXPwl1yC71D45vDAfaVEW
 zMZ35nTliz1ILnftScHIxTS+hT27IDr8KQbngHJW7d3FYzVNjhmSHX1GSZlutxUUsLmX
 El3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=xsUbPWAhYtsZRE8nHbpZ90/dMr+6ACJOvf/o3gzcGwM=;
 b=fNggBRHrJB1u/0eNURXiDt8hUXGTDVHivSuV0qzuO9nYfejORMimaVw1x9SBNhkti8
 LnmN65xroCTBOazU0HQz08whnZ2JMFAgUA3aqEtkU2s5Abs2aDht1aqvkbL0iROku4/R
 t++z5L8rEs6wgRxR51BYrC5bQ16BulDJNdJb8v0S5v9YE1gg31AEWhlpsyf6FfnIjzUx
 s5TlQCVHUW8PgjqbzDqeZFZQWLSTR01CKUwh14DFnpqayyie0uWGgB2NvNpwvH8g5wp8
 2ERejZtH7gQPi9e+e8l2s386BD4MeyT5jAT/sdTBjRXMmh7C8B720tdkZMUPTXH+bcYJ
 KQew==
X-Gm-Message-State: APjAAAWLXjoXoRKr7p2Ib2BQGjCete9RK1nzCNtuJsaV2I+29t+id3xi
 cEt3ihO4/W4YjDkITIbcBanJEAiahB0O9fhucO0=
X-Google-Smtp-Source: APXvYqxfZA4v8peKNM04mGNBALs86xGAR9+I6+hzmiYK3t55tpMLGcCRQQm6ljdK7TnDP4vs7ZB6lB1K0pwxYVg4mFM=
X-Received: by 2002:a17:90a:3268:: with SMTP id
 k95mr2701944pjb.48.1582192851840; 
 Thu, 20 Feb 2020 02:00:51 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:90a:90f:0:0:0:0 with HTTP; Thu, 20 Feb 2020 02:00:51
 -0800 (PST)
From: "Mrs. Susan S. Cage" <drgoodluckebelejonathan061@gmail.com>
Date: Thu, 20 Feb 2020 02:00:51 -0800
Message-ID: <CALjo5=9Nw6erRGz0fKm=tZEMk3GYPX9FUD54_CiYDSXv8KBisA@mail.gmail.com>
Subject: Attention:Beneficiary
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
Reply-To: cagesusan199@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Dearest Friend,

Sorry for invading your privacy, my name is Susan S. Cage I am 81
years, citizen of United States and presently in hospital undergoing
chromatography for bronchogenic carcinomas (Lung cancer) which
affected both Lungs. The doctors said I have few days to live because
the cancer has now affected my brain.

My late husband left Fifteen Million, Five Hundred British Pounds
Sterling in my account, I want to transfer the money to you and I want
you to use it as a donate for charitable and help the needy,
motherless, less privileged and widows within your location.

I need your assurance that you will use the fund for charity, once I a
favorable reply from you, will inform my Bank through my lawyer to
transfer the fund to you as my Next of Kin and Sole Beneficiary. Once
I receive your response, I will inform my bank in writing through my
lawyer.



Thank you and God bless you.

Mrs. Susan S. Cage
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
