Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FFB4B3C85
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Feb 2022 18:26:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF76D60B91;
	Sun, 13 Feb 2022 17:26:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wse-_hLur-DY; Sun, 13 Feb 2022 17:26:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9BA6660A46;
	Sun, 13 Feb 2022 17:26:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 98A6A1BF37C
 for <devel@linuxdriverproject.org>; Sun, 13 Feb 2022 17:26:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 78B2260B91
 for <devel@linuxdriverproject.org>; Sun, 13 Feb 2022 17:26:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OaWLzU5ergm6 for <devel@linuxdriverproject.org>;
 Sun, 13 Feb 2022 17:26:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com
 [IPv6:2607:f8b0:4864:20::b2a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DFB6A60A46
 for <devel@driverdev.osuosl.org>; Sun, 13 Feb 2022 17:26:52 +0000 (UTC)
Received: by mail-yb1-xb2a.google.com with SMTP id 124so11582397ybn.11
 for <devel@driverdev.osuosl.org>; Sun, 13 Feb 2022 09:26:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=/rL+TycpMQLfB5P4Zn9xgGfUWg8yPCNTwrE46ZNldMM=;
 b=JNBevpQydkd5xopZfGev9uP4QgWzls3vxLU2e4Aw0PYoEe1CuegA44GnQJMWZ6seYh
 kYPPyVqs9bnczR8G8pNTR3FiP+PsNT7SNrHsffl6NxncUN2C1rkFWR3VdgRN0VntONk2
 JyIH/2wLypMwGKiPg3iyp5qiIDIcG5WYt8dv91Cy8pcv64PZMqPhHovMokivQs9uxrAF
 /3/TbsN+ewlXWGIhQ9wUiyMpnv2ADEKSB4lF8AF1EufamCWl97xsKSgU3TrRWv5mUuGv
 U72Aidu5zkRFlUsT35ChWbxDBwysETnB1ghHGOMWxM57pX8qYerxolnu6F9FwgmazEdY
 80DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=/rL+TycpMQLfB5P4Zn9xgGfUWg8yPCNTwrE46ZNldMM=;
 b=m0ZPNOeOY8uWVtiWQx1FhM2pdvCY7qHKynGZBFyJsj4TCHGjSwrxUoksUxzBAZoH23
 yFrInXXxTjXY6308EN1L+cmpbcxACWIViFz10FFDEXkxYZz4oFeep3J/m4o1LmfBcidK
 EFbsy6dCvgkYe2gtSQyipSfOUD8UvOuEm5cvY98sy+oBCqNZfSc8ylo7+lNauB1hPG9j
 ir9cRmtjW+sF30Z5fNDLy5nfR3zbfPkrQO9Ax99GZwS23//pQGr2LmqVMp3aSFRzHSLq
 zt9/AFiJ2nLu7nL+sPvQKyPtAfjE8NZHVgEHLGNfOfA824AbRvYWED2zErN3f//Zm1PG
 +wNw==
X-Gm-Message-State: AOAM532ZhLH+WMJZpiUl52rnUBQ5yctsL399mvmC8IFE1EvKcB5yPn5d
 AeQGNGcE/DFogo9xkw7mUb8iNbH6VhyKQxCZ9GE=
X-Google-Smtp-Source: ABdhPJxp8iX6UBO2DGBXQ7+6vw6gbw4lMEeQ1qsg2e0cqZ4zAZ3TfWsWue5vMgS0VNdpjEbCTpRZ5L/yNYcpP3/PP9s=
X-Received: by 2002:a81:3442:: with SMTP id b63mr10677907ywa.493.1644773211251; 
 Sun, 13 Feb 2022 09:26:51 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7011:812:b0:1ff:f81d:242a with HTTP; Sun, 13 Feb 2022
 09:26:50 -0800 (PST)
From: Dr Ava Smith <gracebanneth@gmail.com>
Date: Sun, 13 Feb 2022 09:26:50 -0800
Message-ID: <CABo=7A3X01qQaaiHxRZLK5aGBiFMhb0SngWX2gHtG8wXqVtutQ@mail.gmail.com>
Subject: GREETINGS FROM DR AVA SMITH
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
Reply-To: dravasmith27@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Hello Dear,
how are you today?hope you are fine
My name is Dr Ava Smith ,Am an English and French nationalities.
I will give you pictures and more details about me as soon as i hear from you
Thanks
Ava
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
