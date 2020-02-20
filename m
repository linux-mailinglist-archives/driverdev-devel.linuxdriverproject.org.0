Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 328C8165B01
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Feb 2020 11:02:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C45CE214EC;
	Thu, 20 Feb 2020 10:02:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NLxokUz6FVjy; Thu, 20 Feb 2020 10:02:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3D04120C92;
	Thu, 20 Feb 2020 10:01:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4D06A1BF2C5
 for <devel@linuxdriverproject.org>; Thu, 20 Feb 2020 10:01:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 44F4586BA4
 for <devel@linuxdriverproject.org>; Thu, 20 Feb 2020 10:01:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x8NXSblAPHA5 for <devel@linuxdriverproject.org>;
 Thu, 20 Feb 2020 10:01:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 212B586B7B
 for <devel@linuxdriverproject.org>; Thu, 20 Feb 2020 10:01:55 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id p14so1685693pfn.4
 for <devel@linuxdriverproject.org>; Thu, 20 Feb 2020 02:01:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=xsUbPWAhYtsZRE8nHbpZ90/dMr+6ACJOvf/o3gzcGwM=;
 b=dwLd+3LJSBvFv79bNaPi6FIYMGxFD1eshrWzldIBC927Bytj2OeUIl46o05MA/UKyI
 DjmfA5dBsVk8BQ9OXq3epakhEpn1NCET+bN9jwwy91pQqfxiIrtXmA3RyD4MuPfYS+oY
 jHuAZ4otLQF/K8fOOYMfmcvdr3MzYdC2QxNJkxUBElIsQ1/M2U+MhwY+307i2MPbo6kH
 Lbfx5x/qGM+bO71N+KBJ6inysZdkXSm2eCjmYPg9GtXsVWiqQcYbif6t4h5YQ1bOKLgt
 RyhWqs6CeyEu950mSMP6vUO3A3PuB4uohkbDd3Ac+FBY28oeJDhwEczU7CID4ErHs5j7
 sijQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=xsUbPWAhYtsZRE8nHbpZ90/dMr+6ACJOvf/o3gzcGwM=;
 b=INqa12OUr5mQ/7/WLClpx1IaHTsAkyZi3A1nIKaaQWmy3hZAwD3MEd0E3WUclRkJ7k
 /vN1uPiu1n9MbN4JKDfDYCoOcRUSexkCioAb5L0+CqG3GE7gjej0wNfl2mcqMNpBEJTR
 LWXkrjGaz397GEkTGzOj3jiqEl16oGzAzdoWvOfqBHLvRYwID9J5w7F2vBO6h2wSdxtO
 CFKn+VCRN+LpwUSHQNVPa5ebPO5vQmM8rhfQFiNH9S74xyW8mctmHQExQDAswFcLcp0n
 VQ+JNCfDXm1QRmtc4Q6iNo6GdzA/1UTaWo/k+m+N44X3mbcLuV5aZ3ayoZZAKaupiWNl
 Y23A==
X-Gm-Message-State: APjAAAUAn6HY6DOhV+ojMg0+2EBiLsUr/nZOHSC1R6zeLLps2cwxkJG2
 a8IRWEob/Y2DQ6FHiBetDvLsNVvyp6/8tEJx9kM=
X-Google-Smtp-Source: APXvYqw2sveZUCKBmV2iXF7UHHebBZ3ekgWlf/dl5jMXuVzDcCdiEBqTAy6RUU+C44tDWqIwIllQmcg5tddHbn2SarE=
X-Received: by 2002:a63:2cc9:: with SMTP id
 s192mr31430410pgs.441.1582192914773; 
 Thu, 20 Feb 2020 02:01:54 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:90a:90f:0:0:0:0 with HTTP; Thu, 20 Feb 2020 02:01:54
 -0800 (PST)
From: "Mrs. Susan S. Cage" <drgoodluckebelejonathan061@gmail.com>
Date: Thu, 20 Feb 2020 02:01:54 -0800
Message-ID: <CALjo5=92honwOTiCOFfRnXNatmAOfe0-zurnTeHjVVaTGZhc8w@mail.gmail.com>
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
