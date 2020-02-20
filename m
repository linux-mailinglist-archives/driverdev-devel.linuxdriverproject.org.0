Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C33165A90
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Feb 2020 10:54:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AA3AC84469;
	Thu, 20 Feb 2020 09:54:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ssqZYPynV6Q; Thu, 20 Feb 2020 09:54:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 938BC834A3;
	Thu, 20 Feb 2020 09:54:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C02B41BF5B5
 for <devel@linuxdriverproject.org>; Thu, 20 Feb 2020 09:54:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BD58B819A8
 for <devel@linuxdriverproject.org>; Thu, 20 Feb 2020 09:54:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mbLsCspInKiA for <devel@linuxdriverproject.org>;
 Thu, 20 Feb 2020 09:54:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5770D815E5
 for <devel@driverdev.osuosl.org>; Thu, 20 Feb 2020 09:54:38 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id i19so1680768pfa.2
 for <devel@driverdev.osuosl.org>; Thu, 20 Feb 2020 01:54:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=xsUbPWAhYtsZRE8nHbpZ90/dMr+6ACJOvf/o3gzcGwM=;
 b=KfNWW2kcqvTW/9/08hTLogIqobA7bvlKpQJoYHafvufqDMAEJNGTi16kdgjiBPR6K2
 IBu4QoBeoD1zPK+mAFEFCyGoW7vmbfnnJRoF3S1jn953AwhHjpsb61lJNKtC5Cd4w3ly
 LyXVFblZTrGK4xKB1acSQvvf0L0W5gtLLv17Nc8u08V8JuGNOrki7Hu4hIn889cOrocf
 OI7ofI/Ba26rlHcp25+n0dtCNsZNHdepJpLTvIgblIc5oB7MwKt85sd2HkDRZ6GK9GOZ
 1AD79o4ZcYs/IVxzGoSLwT+BZX2xrTfctgg/ehk24p/tiuqY5cUAh9nbhz8Oq+hbCjua
 K5DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=xsUbPWAhYtsZRE8nHbpZ90/dMr+6ACJOvf/o3gzcGwM=;
 b=sHF3y+qwk6Cq/+rMJN+Ipt0MuuRA4SNl+/Nu3Lx2QY2bh2HoRjdM6qhxcamgMRmwr8
 ZGYa9Vr0qTM2fD/cz0M5sS+JLiD/bn8lwLvt+iPtHkB7MLRHPebZx1OMGxFDH0EdC230
 DG2YRm+b8hxmTbL+rCIFiQIehtxWxil+lcla3V5Xhg09A07XqZb46+7/Ygde0CN0551g
 6Grrr5D3/7sNbKCBnfA3ofj6OykmchOAMjLC4F8G99ZQza6TFQJdgzjfFNp4tdAAxxcy
 sMYTXk8cTSkWS/02CZ05MIdtCjx8KnjqtFr1k7Iu/jvJdzOWLrAOvJTBtNxzwA2pXq0T
 Pzyg==
X-Gm-Message-State: APjAAAWVfVluPNSGFMxnhaCQmITXMHjy1idXkYUxOwhakfDNRW8kHe5D
 Z6NOkIOvLkUzT3E/L4DCBBSbCWdPL8j17WddQ3I=
X-Google-Smtp-Source: APXvYqySoCSJ82A8OuYPdZOTOSzwsgpIu/3GOYLR3uHjrSC8cVSsXETPeL8PxFF00bDBm0liDA2StN1CChwALXKR/tU=
X-Received: by 2002:a62:5bc7:: with SMTP id p190mr30655380pfb.16.1582192477900; 
 Thu, 20 Feb 2020 01:54:37 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:90a:90f:0:0:0:0 with HTTP; Thu, 20 Feb 2020 01:54:37
 -0800 (PST)
From: "Mrs. Susan S. Cage" <drgoodluckebelejonathan061@gmail.com>
Date: Thu, 20 Feb 2020 01:54:37 -0800
Message-ID: <CALjo5=_qROtCiT4u8zj8ta2R612eUBzRGz6aZpKsD-fVmmvMXA@mail.gmail.com>
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
