Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5869E56E
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 12:11:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DCA1A88116;
	Tue, 27 Aug 2019 10:10:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1OKUd5eR+JP9; Tue, 27 Aug 2019 10:10:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A9B9E880B3;
	Tue, 27 Aug 2019 10:10:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E6E81BF298
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 10:10:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 58D1D880C4
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 10:10:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GKGUP1higaTu for <devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 10:10:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F1C6B880B3
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 10:10:52 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id h13so30578067edq.10
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 03:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=E1mXiLDMeCBnuH8acbRiGZEzKKN2n3++JkCRPbUs8fc=;
 b=kidxx+uovea9w+z6uivl1T/sIyChibnfqX+DPzul34ZBgy+mL+RhOGlaIk7B3QudYy
 jCCoyRCkqOsxJxWRepGJ6JUTARi2qMslmtR/QmKZOF1tr/TAfCiaJPwaATYT+dqcemc3
 +L2dCM5GszkfN+1fflv6G2O1rQVqR2LctyrtgxyYDKqVWc5mqc2hX4IzBhy+PhiylKvG
 M1dRFT9K4Kub4tynLiFI6PNFEO/rmNeik3Ppi8rOmGAVf9qS2PK+Gu4CVnAqx9BXnj7N
 CWTSHMnXRQY63iDPTuWnifTQrraYg8SuDs4TEO0wFFaFyQbgLWkdMBrVWSxG3DGAdvr+
 ZvWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=E1mXiLDMeCBnuH8acbRiGZEzKKN2n3++JkCRPbUs8fc=;
 b=jPrMUuSEpx5hiegtyFD0KtMvFpDMZovbAN+NfJd6+77mcdBPhBpQxjnf7vSu4alBIH
 TN+HYOVZYphWt0n+tW38+6Pw6G2fKaIK5MepqICuU4EtcqSZROXzkSIrIzpBCly7ziRc
 u98QDsvw2RAZqBB8Aem98lTZxet6mqXhp4Re6+VAxlXOuveb5uBJQQ+9xAUxMmRd3CSA
 nmjPlkA9vqrPWB9ZPnmGyu/M9zQCFFeGetL0JgsdW5bkCMvb18iKW8ByooUA63G/f2nT
 86En3VenTJot5xa569u9tsjd9KeYzbFmj8jACcXTC7ofnKKik4oA0Mir09eKRAGNGfDH
 2TKw==
X-Gm-Message-State: APjAAAXQtAHbGbxW7h3QoW/Kh78NSI+h+QRMJX12U99+qYw8G9bEy+Y7
 9+Q3ucIUvHsTaRjgflocSlbP7ozWUY8Pp/LCFdQ=
X-Google-Smtp-Source: APXvYqzhci0Ua6Ho8kCBc9Vt4yZmZTtlNIYLUymOL/edOkV+MQbptJFokyo5Qum6EG8/YZNNxKtJvVfPE1yKPwVPxr4=
X-Received: by 2002:aa7:cf0d:: with SMTP id a13mr23602527edy.286.1566900651436; 
 Tue, 27 Aug 2019 03:10:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aa7:d94f:0:0:0:0:0 with HTTP; Tue, 27 Aug 2019 03:10:51
 -0700 (PDT)
From: "MS. MARYANNA B. THOMASON" <eco.bank1204@gmail.com>
Date: Tue, 27 Aug 2019 11:10:51 +0100
Message-ID: <CAOE+jAAtPS4VjjCN3WX_Sa2nkeJsvuUWM8bTkbT+7xRYJH+eOg@mail.gmail.com>
Subject: WHAT IS GOING ON? DID YOU AUTHORIZE MR. WILLIAM GEORGE TO RECEIVE
 YOUR ATM CARD WORTH $15.600,000MILLION US DOLLARS FROM OUR DIPLOMATIC AGENT?
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
Reply-To: eco.bank1204@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

ATTN, DEAR

WHAT IS GOING ON? DID YOU AUTHORIZE MR. WILLIAM GEORGE TO RECEIVE YOUR
ATM CARD  WORTH $15.600,000MILLION US DOLLARS FROM OUR DIPLOMATIC
AGENT?
CONTACT OUR DIPLOMATIC AGENT MR. CATHY JONES TO RECEIVE YOUR ATM
MASTER CARD WORTH $15.600.000MUS DOLLARS.
SHE WILL HANDLE THE DELIVERY TO YOUR HOUSE ADDRESS
IMMEDIATELY YOU GET IN TOUCH WITH HER TODAY.
Contact Her on this Address listed for you
DIPLOMATIC AGENT Mrs. CATHY JONES
Email; Katerinejones19@gmail.com

Contact Her by texting on this phone numver (408) 650-6103)
listed for you
DIPLOMATIC AGENT MS. CATHY JONES
Phone Number; (408) 650-6103, Note she can receive only text message.

TEXT OR CALL HER FOR URGENT COMMUNICATIONS. (408) 650-6103
ASK HIM TO SEND YOU THE ATM MASTER CARD WORTH $15.600.000MUS DOLLARS
AS WE INSTRUCTED.
PLEASE, ENDEAVOUR to re-ceonfirm your current mailing address to him
as i have writing below.Avoid of wrong shipment, delivering your
Parcel to another person.
This is only informations He need from you to deliver your ATm MASTER
Card to you now
1.YOUR FULL NAME______________
2.COUNTRY___________________
3.ADDRESS_____________________
4.PHONE NUMBERS______________________________
Remember,Contact this Diplomatic Agent, Mrs. Cathy Jones on her
email address .
EMAIL: Katerinejones19@gmail.com, only money you are required to send
to Her is official diplomatic agent delivery fee sum of $50.00 us
only. She is at JFK Airport,New York
Text Her this on telephone No: (408) 650-6103

God bless
SINCERELY YOURS
MS. MARYANNA B. THOMASON
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
