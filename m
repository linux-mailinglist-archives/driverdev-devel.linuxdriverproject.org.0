Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6274FFC023
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 Nov 2019 07:27:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F3F3489CA6;
	Thu, 14 Nov 2019 06:27:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5OIR9w4ZPfKz; Thu, 14 Nov 2019 06:27:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4321D89B85;
	Thu, 14 Nov 2019 06:27:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 57A701BF3BA
 for <devel@linuxdriverproject.org>; Thu, 14 Nov 2019 06:27:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5345F24723
 for <devel@linuxdriverproject.org>; Thu, 14 Nov 2019 06:27:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZLjzxTaFepkZ for <devel@linuxdriverproject.org>;
 Thu, 14 Nov 2019 06:27:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 7922C23420
 for <devel@linuxdriverproject.org>; Thu, 14 Nov 2019 06:27:18 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id m4so389178ljj.8
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 22:27:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=qde/QHHHBA0hc4z5Uwccz1NiN43Cs3BtAHXUJoA7Q7Q=;
 b=MrVF5eLXxWhXIbFlaOt7YeDpAE2k0nFUTFypWccr6CUZeF5VKeh4hdKxALgeOpf029
 S5a5gofLW4nRySUwF16136IJbG2BoQ8n7zlkYUMC5202dKNTE/G9XVRQ83EROjuNq55C
 NBk1t1CoOzI2TWdhZjwwAwhG9QtpoFh4tkJs8Qrel1pY1g7CA6mAieawyDmEaK7nWU4c
 3PSM13YCPMpR38qBPjF88KpWOeh545Vr03HoWqK1/7/I0C8OcIlmKAZRGuRPJX6CA4mr
 qOwkVtPYQiCA7OYzjcf7Za5HtTBeA+w5Vb2IqaMfJSGUMe54u5MxDm6Ia3foyNTUOTHy
 RpOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=qde/QHHHBA0hc4z5Uwccz1NiN43Cs3BtAHXUJoA7Q7Q=;
 b=lJRbaabUXaneihllbeYEryg02RhfktqV703eouWSYBDrCktS/c5/4TnWBIyP96Xfx+
 EhmhBNgxtWzmy3TwFf9og4vgf5Qcci2XD6mD3vyavnxnfaTgJQ5YFIFViWWCiR565dp+
 E5bxPahZMUun2PNQheBee+mZYwgdl3HKk9vmRkPlZKR4aI9j5wfB6MJDaDLsL9qZIeRM
 f+Dks2czJXbPUqpXya6ETBeJv9aXiZIutsCs/2WagsIL6ubUGXZL2gu82WbcR/p/MuBT
 B37U7bXRTjCiEIMblQmE4xeZC4HHp61xP0T34Qb/n08ll2wK9iEWzJmdN3r/3kRMa6Ze
 wHTQ==
X-Gm-Message-State: APjAAAXvxOv69BfQKd5ntizkM2t483uUxACQRXTKeRBrM5zm4+kgPhsu
 P6TYQec8dQM1/qM8m650fbOM8EsRHw0oJFsTgyE=
X-Google-Smtp-Source: APXvYqx6XKEyHMOgnzua8xpVJqQWuBNc/aII0QCsHxsTXvlLHStUzDuvhz/azuzTzXG/zGkg2FaLTplBLdkfpIodTyQ=
X-Received: by 2002:a2e:3c08:: with SMTP id j8mr5204181lja.28.1573712836327;
 Wed, 13 Nov 2019 22:27:16 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac2:5bd0:0:0:0:0:0 with HTTP; Wed, 13 Nov 2019 22:27:15
 -0800 (PST)
From: Alice Shaw <aliskajshasjsshwa@gmail.com>
Date: Thu, 14 Nov 2019 07:27:15 +0100
Message-ID: <CAHmwjK8-_dVW4AaBq3kPL1X5jpP4cvyDi0b2=5W1zKppwGNKMg@mail.gmail.com>
Subject: Can You be trusted?
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
Reply-To: mrsmrsaliceshaw@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dearest.

Peace be unto you and your family.

I am Mrs.Alice Shaw from Australia, I am 62 years old and has
breast cancer, and i am presently undergoing treatment at the
Preston Royal Hospital,London United Kingdom, I lost my
husband late Mr. James Shaw 12 years ago without a child of mine.

I have to sell all the properties left by my husband because
the doctors said I have to live less than two months from now.

I deposited funds worth 7.5million dollars I realized from the
sale of our estate with one of the banks here as family valuable.

I would want to WILL this fortune to you if you are good and
honest person, I will have you contact  the bank here and
claim the funds before I die with my lawyer's assistance if
you promise me that you are going to carry out my wishes to
the very last without going contrary.

I look forward to your positive response, and may God bless
you as you carry out my wishes, contact me via my private
email: mrsmrsaliceshaw@yahoo.com

Sincerely
Mrs.Alice Shaw.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
