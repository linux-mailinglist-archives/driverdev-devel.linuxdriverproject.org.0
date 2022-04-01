Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FE34EEBC6
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Apr 2022 12:47:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBA994255B;
	Fri,  1 Apr 2022 10:47:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AiP_9kKP-_Iu; Fri,  1 Apr 2022 10:47:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39BED42557;
	Fri,  1 Apr 2022 10:47:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 104271BF861
 for <devel@linuxdriverproject.org>; Fri,  1 Apr 2022 10:47:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F20584255B
 for <devel@linuxdriverproject.org>; Fri,  1 Apr 2022 10:47:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9cgXmb6now9U for <devel@linuxdriverproject.org>;
 Fri,  1 Apr 2022 10:47:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EBCC042557
 for <devel@driverdev.osuosl.org>; Fri,  1 Apr 2022 10:47:17 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id h16so1458596wmd.0
 for <devel@driverdev.osuosl.org>; Fri, 01 Apr 2022 03:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=2IqHyfgTaH8rS/p0dn9YrwS3ckWYH/LxVsIXL42M2R4=;
 b=qj4M2gHrJ8AguJQAJ25aeB54eThPQFOg0VJ+IeoFTtV27ndqaLWFPBmQGmt1hOHEK7
 gogL+T6c6C7SA7+zp+FFAZoud7bsn9vPRxNdYhEs5ZEsuxR1Dpp26tYgYy9gdOfx7xd/
 grq2Iv0kq3J521idBZ9mCAgFbb8t+dsv3EYNtyvWJufijZgv/Dysb2eTZOVpuerJHTzc
 yGEOt8hDiXc++dkb3A0C2UfhH9d2l8XPu+FnrMFxMnVRgTOaMhIFV25H+SPYHKZJHwbd
 J45hWORBg+7mb344O33luwCyjNmk6NfBsUQ7PFatz9moPWQ7FIP70ljk+GkyRUhjKYRP
 0/WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=2IqHyfgTaH8rS/p0dn9YrwS3ckWYH/LxVsIXL42M2R4=;
 b=AAIPpmdrbqqdzjmt/1Oj6QqDynFacSTPNJeVfB38iVbhbJP76WSOtTwX80Q1FmF79A
 2wNPOHFLEKGhIw6SbB0PNdGRjAvbkm1+pjh1+GxGJdRrVxzeXjx7laA6vPU/u6rKhvOt
 AGQBvW2iY/LdDT23Sj4yi51f/TqSgTfFMynFstXETlJNs/dvMT4p8/G77VUy0cE3XvZ/
 /1S2Q1/YvoRgzlI1kbc+YSu1zFMfbSyGlnuHlZtJFjtHZEAKYbHY69JdjNXzhIVq20aq
 GU10Vq10Z1QSYth2xcVD28BF4b4Mp+TKesQg4uho4QSlb6Rvlgk37pSFomaWrE5ARUPM
 dlfA==
X-Gm-Message-State: AOAM5318pyXjY9bqG/Cb1jrue9ZbUoXRL9Ca1hBsN4HuUO2vMs3jAXLM
 Za70l2942QKmtOsDzffDTtLkkPRhsjNSBacON7I=
X-Google-Smtp-Source: ABdhPJxJg0DAC1ah8fqkpGvDG3Pt0eVOE7LXiObaJ+5cyaSgpUkIGA+Q8Pk+fi77F/VI4Pp+8g2rLEXAh3lr7IXgFuU=
X-Received: by 2002:a05:600c:4e8b:b0:38c:90cf:1158 with SMTP id
 f11-20020a05600c4e8b00b0038c90cf1158mr8429021wmq.107.1648810036146; Fri, 01
 Apr 2022 03:47:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:588d:0:0:0:0:0 with HTTP;
 Fri, 1 Apr 2022 03:47:15 -0700 (PDT)
From: mw mk <mmw90602@gmail.com>
Date: Fri, 1 Apr 2022 10:47:15 +0000
Message-ID: <CAD0Jtr9OEh9ET0V1i9+5btXwXZhruoNo1CY-TNh6wUzXgxd21A@mail.gmail.com>
Subject: My Name is Mr. Hamza Abdul
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

My Name is Mr. Hamza Abdul
Dear Sir,
, I am a banker by profession, presently
working with a Bank here in Burkina Faso. My reason for contacting you
is to transfer an abandoned amount of Seventeen Million Five Hundred
Thousand  United States Dollars ($17,500,000) to your bank account.

Further details about this transaction will be sent to you as soon as
I receive your response, indicating your interest.
Thanks and hope to hear from you soon.


Mr. Abdul Hamza
Tel:  +22653157215
Burkina Faso
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
