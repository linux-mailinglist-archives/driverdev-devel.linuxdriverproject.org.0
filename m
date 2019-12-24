Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB26129F26
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Dec 2019 09:37:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AB66D20656;
	Tue, 24 Dec 2019 08:37:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lP8rAAkXEVmQ; Tue, 24 Dec 2019 08:37:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EC53C20762;
	Tue, 24 Dec 2019 08:37:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1DADE1BF23B
 for <devel@linuxdriverproject.org>; Tue, 24 Dec 2019 08:37:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 154A884F4C
 for <devel@linuxdriverproject.org>; Tue, 24 Dec 2019 08:37:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6tfHkLZ8edVK for <devel@linuxdriverproject.org>;
 Tue, 24 Dec 2019 08:37:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com
 [209.85.166.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CF1E984D49
 for <devel@linuxdriverproject.org>; Tue, 24 Dec 2019 08:37:19 +0000 (UTC)
Received: by mail-il1-f193.google.com with SMTP id b15so16087220iln.3
 for <devel@linuxdriverproject.org>; Tue, 24 Dec 2019 00:37:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=LcGU1mt+nAQIi3eKcWZpiy7DqrkNG23tK1MNYV9CB+M=;
 b=VlyE5hkjIlVtebFVtbJSUDG1nq6yxqsP+CXAAvK16kEDCa9/FIjqePwKOUOUFxUPGI
 IobnBKqUZtvWs9liflZ3kccv66QhBRcGlV0NLmY+Uo4N83fE4acq5fKevjm3GVqyORPq
 V25kDNfLb/u3NDc8qTILa6U172uqigqrULaJBwbLq67hwZ4izN64H1YClKD775qzZNF9
 0l4JMYDmF4urkgDiYDNvOqEpGdvq+E73I4yTDC9aWLwqkTeAHCJ4Ixn//xPq6JLVBBNn
 aamV2t3zoMGAP8AF+RdWv4cRolj9/iVR4FvRYYpwL/EkEZCm6WUSjJi89kMXjGu5nUwC
 ihKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=LcGU1mt+nAQIi3eKcWZpiy7DqrkNG23tK1MNYV9CB+M=;
 b=ocVgr3A71/+JnbLPsTzSndpr2AovsS9S9M/dm1aqXYNk3MMcz5y+r2DFbKFlTYhnj9
 joD5QHIeYS58Ga4yTO/IdjqIUyiSmLVniYER0jeeyBjLsYiWwSNBBQ1iOH+4FjxZ0MZi
 5VevwIjZg1nQJMjNIPDuJUOIoiAlN2w1Rg2gmigSHM8IvN4i2Vpi+Syv+BqaCjcfkpSL
 L2DYJC4OZtqg5B3vq0v/EBsq5ncwykP4zXtMLWFmGTNCXcoLzfLU+cz5rtYhRKQM1slB
 +xppqp1QRmH8uKwqNaGXg4DfOtK5B+4m0ldjv32dQXv2wZcuOrH4wrlanTuRyLtenh8h
 zjoA==
X-Gm-Message-State: APjAAAX2J5bnh/AGIPNJrnvJ3Xo3Qqj+COKecgHC/k/5An+XvDSQnsds
 Lz7VAJYixLQI2e7pVN0KWcTzmbaSq4aStYjzRYM=
X-Google-Smtp-Source: APXvYqxLrvnOpR+O6ofXnSEOnwrvGziUPmMlJTtG0DR2NirldWli2cXJyiYqfAfUdIRDZDD83uetmfvXHC6vAEF7nxQ=
X-Received: by 2002:a92:c50e:: with SMTP id r14mr29396039ilg.52.1577176639205; 
 Tue, 24 Dec 2019 00:37:19 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a5e:c244:0:0:0:0:0 with HTTP; Tue, 24 Dec 2019 00:37:18
 -0800 (PST)
From: Beth Nat <am19040@gmail.com>
Date: Tue, 24 Dec 2019 08:37:18 +0000
Message-ID: <CAEgaL+akE_7uuR+QBv+=W5npZ3Bg=jguaB4zU63CGVjztQeQyg@mail.gmail.com>
Subject: 
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
Reply-To: bethnatividad9@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

How are you today my dear? i saw your profile and it interests me, i
am a Military nurse from USA. Can we be friend? I want to know more
about you.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
