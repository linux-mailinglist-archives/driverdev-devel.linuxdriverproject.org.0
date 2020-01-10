Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8AC1366EB
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Jan 2020 06:48:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 07E6A220A2;
	Fri, 10 Jan 2020 05:48:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wjGRjevmhAHd; Fri, 10 Jan 2020 05:48:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CA746203FC;
	Fri, 10 Jan 2020 05:48:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 078A61BF867
 for <devel@linuxdriverproject.org>; Fri, 10 Jan 2020 05:48:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E95402040A
 for <devel@linuxdriverproject.org>; Fri, 10 Jan 2020 05:48:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t8jnH6Xxm2PI for <devel@linuxdriverproject.org>;
 Fri, 10 Jan 2020 05:48:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 5DC3A203FC
 for <devel@driverdev.osuosl.org>; Fri, 10 Jan 2020 05:48:43 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id t2so838616ilq.9
 for <devel@driverdev.osuosl.org>; Thu, 09 Jan 2020 21:48:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=Rjbe3pVeMfYVPdmVklZ4b2stSqI32LIYp+bn/8NyJvk=;
 b=EoAwwPzFbgiRsnUUlRUB+7PJJ+AVZHBFZNa4oCuKjMjk+VX3Rv2gZbyhXN98TCybTp
 PBy780Tq3Cc85A26X3EBT40XqHi5MP8JYXCBKUJTpVdv+mjZJclSIhKHV9rm/XDTpl7M
 pogDXUI57E7l/V53iccUYgAa4PaavVy7nShf4RmWB0IE7/kqJjd6I8VvNt2ctkpey0R+
 1P1p6c8oKVlnSQXlMUAi135eUVdE04l+Q90e7lKwQtGYJ82TLEIGidP2aCh97qQNG1lT
 ZFlNPcgAPgefpssYMKSK06CNKTHVPFDbFE9kDTsdVLG7mDguNqf1JVIxvkbzEer0qljW
 za/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=Rjbe3pVeMfYVPdmVklZ4b2stSqI32LIYp+bn/8NyJvk=;
 b=XpMN4A900EZ07TmSPT/0Pw1Bhvft0Zzfo9WLVdjSOVSGAqcgsVIf6Hfu8MjdONKVnk
 7pfb36UpbTedeODkL+iVyacz583XjdrQs+MKpz9EjASTXz4Cpd016UNoZ0KvfK9i5uuz
 lHAUo17npB4SVL9SQ5YFGlnJWAgpl+dkKdzgOEr57cXagfcSPDJIrCyLCT5HI0kXX66r
 Mqq/IT72HDu07OGRtk7cn/yNnFa74b1/04BWaCSOwU8fl80lFpu2bTXOKuGi26bYDffv
 7YD26goxKrHJtyXio5/K6mcD9SwwpBpYOQG6QbF3IDXVIQ56KkQA0oHvmGXd6H//TFKO
 0fEg==
X-Gm-Message-State: APjAAAVeanl8uier0aaKp2n/7yiJeP0U/p6yXl+Xb/8ib2laqRJjpEI+
 mUEk9LeqjOY8+Ls0UpCfzJHD1F1/0UkdGwGiSzs=
X-Google-Smtp-Source: APXvYqztB2tRw2ad2QXbllKeG/4TbBhrIvR8Z+5VOpuvHjHh/nEyJnHbZsp+T6UyLpdn9NDXHAcoHLsG1NRP6Fk7hU4=
X-Received: by 2002:a92:cacb:: with SMTP id m11mr1224941ilq.133.1578635322667; 
 Thu, 09 Jan 2020 21:48:42 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a92:1704:0:0:0:0:0 with HTTP;
 Thu, 9 Jan 2020 21:48:42 -0800 (PST)
From: Rick Schaech <julianlfrd@gmail.com>
Date: Fri, 10 Jan 2020 01:48:42 -0400
Message-ID: <CACEXX6iYj=4E8eSGLr31Q0_Jma6Ytc=_giqA-A_VDwbVD291eA@mail.gmail.com>
Subject: I wait for your swift response
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
Reply-To: rickschaech@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear, I'm Mr Rick Schaech, I am the General Account Auditor, Though i
know we have not meet each other before but sometimes in life God have
a reason of bringing two people from two different countries together
as business partners or life partners.

My dear friend, I have the sum of 15.7 Million USD i wish to put in
your name due to the death of my late client who died several years
ago as his next of kin column still remain blank. Though the internet
medium is highly abuse these days but am assuring you that this
transaction is legitimate and I am contacting you that we may have a
deal, note for your cooperation and collaboration 40% of the sum will
be for you while the other 60% will be for me as well. I wait for your
swift response for more details. please forward your response to my
personal E-mail: rickschaech@gmail.com

Yours sincerely,
Rick Schaech.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
