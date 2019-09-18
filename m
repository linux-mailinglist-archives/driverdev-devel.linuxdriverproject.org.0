Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A03BB6189
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 12:38:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5C0F42151F;
	Wed, 18 Sep 2019 10:38:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M0fCA145sl+y; Wed, 18 Sep 2019 10:38:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DDEA921513;
	Wed, 18 Sep 2019 10:38:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BA6901BF3D4
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 10:38:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B399484067
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 10:38:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zpuU_txFE-CU for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 10:38:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3AB338395C
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 10:38:31 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id j4so14874755iog.11
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 03:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=FmGHNpejQ29nIiQ+vBc6/ce+Q7SqcsDKzIUla6egsaM=;
 b=sYmpxKsgWLn+4SmMFn6oPgwqGFSsjioO5J9FnGTp4La/3jxAbfTrMez2Qg1AAMfcW/
 K4vDXcvklrNGfmBv8Jrg+EG8AfBvcMoY5WxG4gJTfXsvJ7x8AAeYuHXJ473QSMakj1sJ
 pbTNT2+NkRqUPLbxt0KQybC84Gqm/JOqcI9ci4Ah1Ss12oFF/1WQzBVrsEq+mj3BGQ5z
 V77ksOWZHS61l1RIjieCWcVTUooOSi1Qpz9EoL7UvZBZspB3ptILLzBECpi/oRwqcSAk
 y/WIOToxh+ZW33iBfP93IbNnAXI/OFMvvoeSIJrlHKnGfqozSsDIUTbXDqD0ihkbm1lC
 P4ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=FmGHNpejQ29nIiQ+vBc6/ce+Q7SqcsDKzIUla6egsaM=;
 b=HobeOxdbK6kGZpjNtDRkUYWnd5FBoe9qQ3Dz7vWqYUVHPJeQrkoLKXtVE+AIunarRc
 hyWkn4vcc6CIyVgibBQFBCaV3j7VHUQZrrs37kalf9kT5prVqZ0f0vRa5518tLES6XC3
 9noJVeMYeaHvc8p1X6J5DLY426fUMQS7GTEA+QgW3W1jW+2LbRoKq7xrv/ini6OThHLP
 0JiMeGphkZSTzGdTy1pa6Opr5C+/FDgIMaKVO0ADkunvOb2v5R+WRE6mmaQARdkki5xG
 yH2GejJZbraMHSlH39uYyOneXon1g0XKsiTynN587obhwpWyWf/PDJZOBCPzvj1FDMmX
 qYsQ==
X-Gm-Message-State: APjAAAWHxfMjpniV/7lincXQqnLUfYg7X6jpMyk5rZuNPK/QLgSS2OKW
 AZfazlFD95Tqn4UFibs3krHhBRpfaNFhdsT8ntA=
X-Google-Smtp-Source: APXvYqyma2M1yftzYKc92yVepDBICfDQb3GPzfSBYgKUu7/NDro8z31JxiXaVEFsCdiEqsrLuah6UPRvNl2YvWGlbfU=
X-Received: by 2002:a05:6638:928:: with SMTP id
 8mr3989260jak.124.1568803110525; 
 Wed, 18 Sep 2019 03:38:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:9403:0:0:0:0:0 with HTTP; Wed, 18 Sep 2019 03:38:30
 -0700 (PDT)
From: Amidal Serge <sergeamidal01@gmail.com>
Date: Wed, 18 Sep 2019 11:38:30 +0100
Message-ID: <CA+aY+6r3J6mCDu6xKMASYw9RtMs3aO5y1+7QA5aZUO2iXCUHhw@mail.gmail.com>
Subject: Bonjour
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

Hello
 I need your urgent assistance in the transfer of an abandoned funds
on your account within 10-14 days if you are interested, respond to me
with your information for more details. your name and surname:-. your
country:-. your phone number. :- .
 Please respond to this email address (sergeamidal@gmail.com)
 Best regards Amidal
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
