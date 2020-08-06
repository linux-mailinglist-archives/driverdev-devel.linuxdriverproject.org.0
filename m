Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC2B23DDFB
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Aug 2020 19:20:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7128E8701F;
	Thu,  6 Aug 2020 17:20:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vgFIkDMvABGC; Thu,  6 Aug 2020 17:20:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 645A486FFF;
	Thu,  6 Aug 2020 17:20:55 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DC42C1BF397
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  6 Aug 2020 17:20:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C94DC24F04
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  6 Aug 2020 17:20:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H5K3i2TdVffS
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  6 Aug 2020 17:20:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by silver.osuosl.org (Postfix) with ESMTPS id DFF3824E00
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  6 Aug 2020 17:20:48 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id qc22so36367821ejb.4
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 06 Aug 2020 10:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=YHJ88/Fv1nDyiHHG4QxKerimQdVIuLlexNt0JGwO5/k=;
 b=G1qepa/GhM5YFsz3N3zk9DE2uBhMfgPIsS4z/W5KOgxmPlq642mxz8OhRuzpAPB4vO
 S3tzFH814Q1rM/q9slDCMj0ZZ1dzCOFjZNTaQL3r3lXHLPrrYotUdpEdr/3BgyXAY+zY
 6q/H4ocx8EpfmT7LpAPZc9jWOlQep4QVLMwAtU1kLpm+93AaQUhXpCWQkF/Z0LGy9eu6
 OuMAG7yl2n+X5CBefnWQcIiQg3YxXRH/X6NZRBAHB4f85YZOiKmk/x9D31RcOptydj8v
 ijlAnfqDLpufLKlKOi+831khHbFQtypT5pn6YQttfq8wCk2/C6RsKWD0H1ni2MjhpTjx
 zUhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=YHJ88/Fv1nDyiHHG4QxKerimQdVIuLlexNt0JGwO5/k=;
 b=suZqdjXtbKcTnfHDAdhMvAzuSLhDLKKkriVedd8ByEs4W/P+yV5KhlpHSm/s/2f8Kl
 fsPWzsufSHkRR9p5o3yxvsddOsMLajCUhcj6AnJu2Ljfb2N61ldoovUju0DFRAbSgON6
 fyXPz8pCsrWjljPHvNUHQ+pZskcNe4DHoA3pz9NOMMcGkM6iFs73htNkqGJP9Bk7JW4P
 XrCPetvAoF5cy5cEEDxqRgugYpy8/f1A0grI0JK7awq6iMJ3YblEeuWPNlbFUjY2/g4y
 p7gzC2qnvqkDJPiqyXOabUjMezI1IROVH6IgWrSpf2y5V9rXTUTF6lm0zl1k9LyKBumU
 nf/Q==
X-Gm-Message-State: AOAM533jnGiuJy8kBScSK2aVWwi4qTrTNmrw3Ve/H+4NtY0Vks6LmxyS
 PPMQVzVNvNXROWqZtPle3gmyTqAXVCGr9Eo8htY=
X-Google-Smtp-Source: ABdhPJxHhn+HDNeU13SqvGisB67GxU2vqjaLJiEK67Z+QSVFcvvx812MvP8dmHX9OjyYENKurhN9IKc1BgjV3mZSdLI=
X-Received: by 2002:a17:907:205c:: with SMTP id
 pg28mr5129180ejb.22.1596734447372; 
 Thu, 06 Aug 2020 10:20:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6402:220f:0:0:0:0 with HTTP; Thu, 6 Aug 2020 10:20:46
 -0700 (PDT)
From: David Mark <eco.bank1204@gmail.com>
Date: Thu, 6 Aug 2020 19:20:46 +0200
Message-ID: <CAOE+jABUMCzaRkPt+dDtqgsNSP-ud3SzhmEcsAPCWawJTL8oPw@mail.gmail.com>
Subject: CONTACT OUR INTERNATIONAL DIPLOMATIC AGENT, MR. JOHN BENDER TO
 RECEIVE YOUR ATM CARD WORTH $12.8MILLION US DOLLARS, This delivery was
 approved today, 06/08/2020
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
Reply-To: john.b183@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attn,Dear.
GOODNEWS FOR YOU.
CONTACT OUR INTERNATIONAL DIPLOMATIC AGENT, MR. JOHN BENDER TO RECEIVE
YOUR ATM CARD WORTH $12.8MILLION US DOLLARS, This delivery was
approved today, 06/08/2020
Contact Person, AGENT, MR. JOHN BENDER
Email: john.b183@yahoo.com
Phone number (408) 650-6103, call or Text Him once you receive this message.
Remember to send to MR. JOHN BENDER your house address i listed below
Your Full Name________
House Address____________
Your Phone Numbers___________
Let me know once you receive your delivery ok.
Delivery fee to your address is $75.00, ask where to send the fee to Him today.
Thanks and may God bless you.
David Mark
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
