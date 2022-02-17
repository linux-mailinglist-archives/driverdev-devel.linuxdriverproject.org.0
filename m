Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B58CD4B990A
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Feb 2022 07:16:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F2503417CB;
	Thu, 17 Feb 2022 06:16:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oixcOhbW_rEU; Thu, 17 Feb 2022 06:16:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B00C417B5;
	Thu, 17 Feb 2022 06:16:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 18FF61BF8C7
 for <devel@linuxdriverproject.org>; Thu, 17 Feb 2022 06:15:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 05BD140A07
 for <devel@linuxdriverproject.org>; Thu, 17 Feb 2022 06:15:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZoI2k9d3WCaP for <devel@linuxdriverproject.org>;
 Thu, 17 Feb 2022 06:15:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com
 [IPv6:2607:f8b0:4864:20::b2d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0E65540019
 for <devel@driverdev.osuosl.org>; Thu, 17 Feb 2022 06:15:56 +0000 (UTC)
Received: by mail-yb1-xb2d.google.com with SMTP id j12so10888432ybh.8
 for <devel@driverdev.osuosl.org>; Wed, 16 Feb 2022 22:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=VusClPyMSUi30Ux+PlwGUBhT5mak2eb5MDhWPESVti0=;
 b=m+99seoCICZYezfB4zZY3l6kpGfwtFOGTBBrc70r9OS7DORMWvyUp3GfigxgoUYiaG
 6s9IryHaoylbsILQKbC54OyoUS60TEpBQvEXq7BKucyAQCvkP47LtpvERNjEXhRlyEFu
 gXIO6JJLAHiJnqYh3Gzpm16XVi+4kGOJVr8E0TZoImul77eyzoREXM0ylfY1b7cgMFja
 ntscmcio3QdaDkB654iP4uHZApO8ngxIHY7cqe+oo37bCJlpoOgwLCUe6R9OD+FsPEfa
 idkQieKiR673WyTz6v0GqtiK53u9cqDk7nyoUOqkPcAeIgi9HJTWUDBJwHj0kfJVNJ5U
 RakQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=VusClPyMSUi30Ux+PlwGUBhT5mak2eb5MDhWPESVti0=;
 b=mWvK9iEa0D0qA+5GX8WfW4d38950DNxO9JoxMUbDKdIwBRoUIFIwNAD1YN4e6mlC4z
 UE8Ic4pvrTO4D9Z0X6keByAk82kU+Y0UG9GGniji//JRvPUIkr+0+Rm/2mE4XgklVtN0
 aSOD5ipYIoWxTR6buZ0Kp3JROb3IDN+9MoHLXj1SbE/rslH9imPeDZ/rj5rPeyUqswOr
 GiCyyX9IASf68WgfhOOTxsUt82PoiOGFZ/oIGRXB3WFxScy2swqQ8DCe9uUcRV1Efh4U
 To3oTjTmwvGJ5mz1Im5yFej/ysJfnu0r0u3pa9bON479zbFjVmnc6PmKiA23f1gqISED
 4KnQ==
X-Gm-Message-State: AOAM531AjvtNXTZ806pSbe2mpJ7lssdT8xg7UZlO50lJ7i4fUh+W4zjz
 /Ze/eYvBruqtpIS1zzy3dTWV2t7M64wmIw2NhsE=
X-Google-Smtp-Source: ABdhPJyGbg87LPJBGSvJspr6diARbM/nXm85m1f2a6ADfyrVszt3k2B9IO87mESLW9VOAtDC69TaZUr3K+Va3XA5s3Y=
X-Received: by 2002:a5b:491:0:b0:61a:5ff0:5d4b with SMTP id
 n17-20020a5b0491000000b0061a5ff05d4bmr1193968ybp.159.1645078555820; Wed, 16
 Feb 2022 22:15:55 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6900:1b4b:0:0:0:0 with HTTP; Wed, 16 Feb 2022 22:15:55
 -0800 (PST)
From: Mrs Elodie Antoine <mrselodieatonie32@gmail.com>
Date: Wed, 16 Feb 2022 22:15:55 -0800
X-Google-Sender-Auth: rsUEg1FEHo_nyz5Qjk3U0q96eQg
Message-ID: <CAOXYY_BX=30vvJZKhSyKFCDRjw-88gF11N1tjTbFLKri3-oYPw@mail.gmail.com>
Subject: With due respect
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
Reply-To: mrselodieantonie778@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend,

With due respect to your person and much sincerity of purpose, I make
this contact with you as I believe that you can be of great assistance
to me. My name is Mr. Antoine Jude, from Ouagadougou Republic of
BURKINA FASO, West Africa . Presently i work in the African
development Bank as telex manager. I have been
searching for your contact since you left our country some years ago.

I do not know whether this is your correct email address or not
because I only used your name initials to search for your contact .In
case you are not the person I am supposed to contact, please see this
as a confidential message and do not reveal it to another person but
if you are not the intended receiver, do let me
know whether you can be of assistance regarding my proposal below
because it is top secret.

I am about to retire from active Bank service to start a new life but
I am sceptical to reveal this particular secret to a stranger. You
must assure me that everything will be handled confidentially because
we are not going to suffer again in life.

It has been 10 years now that most of the greedy African Politicians
used our bank to launder money overseas through the help of their
Political advisers. Most of the funds which they transferred out of
the shores of Africa were gold and oil money that was supposed to have
been used to develop the continent. Their Political
advisers always inflated the amounts before transfer to foreign
accounts so I also used the opportunity to divert part of the funds
hence I am aware that there is no official trace of how much was
transferred as all the accounts used for such transfers were being
closed after transfer.

I acted as the Bank Officer to most of the politicians and when I
discovered that they were using me to succeed in their greedy act; I
also cleaned some of theirbanking records from the Bank files and no
one cared to ask me because the money was too much for them to
control.

They laundered over $5b Dollars during the process . As I am sending
this message to you, I was able to divert thirty five million united
state dollars ($8.5) to an escrow account belonging to no one in the
bank. The bank is anxious now to know who the beneficiary to the funds
is because they have made a lot of profits with the funds.
It is more than Eight years now and most of the politicians are no
longer using our bank to transfer funds overseas. The ($8.5) Million
Dollars has been laying waste but I don't want to retire from the bank
without transferring the funds to a foreign account to enable me share
the proceeds with the receiver. The money will be shared 60% for me
and 40% for you..

There is no one coming to ask you about the funds because I secured
everything. I only want you to assist me by providing a bank account
where the funds can be transferred. You are not to face any
difficulties or legal implications as I am going to handle the
transfer personally. If you are capable of receiving the funds,
do let me know immediately to enable me give you a detailed
information on what to do.

For me, I have not stolen the money from anyone because the other
people that took the whole money did not face any problems. This is my
chance also to grab my own but
you must keep the details of the funds secret to avoid any leakages as
no one in the bank knows about the funds.
I shall intimate you on what to do when I hear from you.

Yours Faithfully,

Mr. Antoine Jude
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
