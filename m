Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F55812F804
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Jan 2020 13:13:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 155A921544;
	Fri,  3 Jan 2020 12:13:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qmbQ4+CVtulE; Fri,  3 Jan 2020 12:13:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E5829203DB;
	Fri,  3 Jan 2020 12:13:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D27DB1BF34C
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 12:13:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CB79F87E0A
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 12:13:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4P25SZjD0roe for <devel@linuxdriverproject.org>;
 Fri,  3 Jan 2020 12:13:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BB30787DFE
 for <devel@driverdev.osuosl.org>; Fri,  3 Jan 2020 12:13:22 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id h23so43693754ljc.8
 for <devel@driverdev.osuosl.org>; Fri, 03 Jan 2020 04:13:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=yFLL8acLS2OspxSgUacErEbmCDBJ46hbe61m7UGyxyg=;
 b=SGF4QgpiN0nnZra2zCc00pPRLMMBtqKJkaImWzpFUnHhc/t0m713IsSeQRF4nKX1bb
 zTx8iXDQdDYAaBGj6U15Y9TOErNt7bQ5VfArt5cID53gQKkOv7xpnpLJpz/5C1NfHe25
 5WyW0HLX4MmPoPxsSTJoP3OuXIJWlq9fAA0pKvVzS2xblXItD5NMHG1W1LKf0fmtZIAb
 XDHxdAB9qKTabnR/QKuXFqlAeC6datXPzdSeO0b2/xF4k/f4K2wvgQRby0SGTCrXxsIq
 t6g2tj1ejN5gIiCNKJBUEFwveHGPzoclQehJm2ftgZbtxf/4DGFdVhp91+ODF4mRrLQC
 RZgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=yFLL8acLS2OspxSgUacErEbmCDBJ46hbe61m7UGyxyg=;
 b=Vituwm13MhkIlWye1D08sVuBeHiPHctDXkL6f6Lx2ndWzZtO8HG/AN+aWyiGma92A3
 O8973gmzzf4oWv7bsfaFYZDAHYP/aGpiYx8ShSrUl/rA3G9kb3NTMctqLsy2zvZZUKkH
 ajykA8+BkdMwppq7S4e8Cxa5MtTe3Igs6vwCD71HF1ExlD/dENWb8vzWAuHTlHgYJt6P
 KgJoT+TQzhEakSBtXaHRdSqtUzuUtZlsveL71LOasYHR4ODG62bnYl6OpB5IU8g78c7I
 O543O23s5u8YuS8/QUqDuWgAkKKO1d0nsagaLilmmBefWyiI7tFndZEiNhOyTrWaSLWQ
 Bl4Q==
X-Gm-Message-State: APjAAAWq0kSuwFsw/vmvrHqg0mMRsEE6DxtUfyYuXYHzZ/tZzaDsMdLH
 8gPFWc6MbKcuXPft2NuPb+KXBDlJKuPOQay2CJ0=
X-Google-Smtp-Source: APXvYqwg7tnM31Ri7j8IIgel5hZim2/6+82trLBGmL9hbdLDXdlKMIsA7hlemjT5LURyjfGnR0EhGxzudad2h4OXFoY=
X-Received: by 2002:a2e:7005:: with SMTP id l5mr53609168ljc.230.1578053600812; 
 Fri, 03 Jan 2020 04:13:20 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac2:53ba:0:0:0:0:0 with HTTP;
 Fri, 3 Jan 2020 04:13:20 -0800 (PST)
From: Amanda Weber <sgtfgbert@gmail.com>
Date: Fri, 3 Jan 2020 12:13:20 +0000
Message-ID: <CAJF3fbZ5vi7xepxqypmDOibR6rY_pRB90b6aJHLbLoWmLLYMEw@mail.gmail.com>
Subject: Hello
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
Reply-To: amweber9877@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi dear, you still have not responded to my mail since even after
reading from me. Cheers, Ms.Amanda Weber
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
