Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD971A05E5
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Apr 2020 06:43:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 029E787748;
	Tue,  7 Apr 2020 04:43:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h9haTZSZx7kL; Tue,  7 Apr 2020 04:43:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EC17A87613;
	Tue,  7 Apr 2020 04:43:10 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B3A11BF36F
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  7 Apr 2020 04:43:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 980C785F56
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  7 Apr 2020 04:43:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id at_Qp6okTo9b
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  7 Apr 2020 04:43:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D7E9E85DC4
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  7 Apr 2020 04:43:07 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id y3so427829qky.8
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 06 Apr 2020 21:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=/VYKm9GDpxmSLCVpmb+6PCW3URtN2apXdt8g30UTbWM=;
 b=D+ekeKDIantU3YUkIvMYapS+IMdVJl97+kAiyZWgakOvmEiy5OEE+R0zXCGEgzVGjb
 mFp0+kzcf9Zp+eHK+MyYvc/zagddQV8MDDOJVPclAHsReQ1unKvjS1LEHSbi4K9NaOJq
 xnmVF1r+RLxAdR2092+BI2t4Xu06okeFLvxQZORDbPkO+bW/JsANVoAkbBq8yk9shus2
 uN38VvhANxkN/+Hj7N9v6U5LMgwboFgkt155BaKFp/xMAxXWMFZkxb6/sO9AJ9SmWMpt
 FEuuuHTKI5EpRxtZ6XSNNGHUXQNDloBOFJ94PD08SmmhgMEiFL0BmdDoaVdssWw3qeec
 rtLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=/VYKm9GDpxmSLCVpmb+6PCW3URtN2apXdt8g30UTbWM=;
 b=sTTN7y/ZOwmG+Q8ZhJAwaFhhRz4j/aRgLRwxdZW1EXUs0xjH2aYYebl8JyUrVJJ2ax
 /gHUQOChoKMZ6cHpOWG2xeNqmG6Ml5t0DWasPfTIk8dadHkowZF03uubZT2o56Hw0vVT
 /qCEeblg6XFs4fGInNGOD2A6WBU/UbijNSFryK3sgS1ppns8Nti/zFtvCEIpFMfmb4q/
 O6kjSgC6ZDHkqw+3gHpzFo0Q3YMjZaYNu3Okmaz23Vkabb7/lDi6+mhb9rOpt8/CmBhi
 Y3cBfhDMvvjAfxCIo1Anlnd2khFL/5MX4RiCi3Nif733RlKj7OdTzLnob5qZV1sifVRW
 kV2A==
X-Gm-Message-State: AGi0Pua2z2XHROXAEZLtNj4TZg4B60w/WQikt7ssDWWgRWaU44eVDnCD
 +TugvwBqiKUhO0cDbQqtihj0n/abDu8+BYAuvoM=
X-Google-Smtp-Source: APiQypJu2IW7+/Vb/SW9VTE6LsDcET2sn2M/cG5y6+sGsxczQxA98FIrTYHqXLwkcxE09Rhg4PR+QUGf4fUWdBE0YqM=
X-Received: by 2002:ae9:efc8:: with SMTP id d191mr432187qkg.31.1586234586799; 
 Mon, 06 Apr 2020 21:43:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aed:2c44:0:0:0:0:0 with HTTP;
 Mon, 6 Apr 2020 21:43:06 -0700 (PDT)
From: YAKUBU nelson <ynelsonyakubu@gmail.com>
Date: Tue, 7 Apr 2020 04:43:06 +0000
Message-ID: <CAKs0xAMxiVjMO5v124m7mkJD6M8n24Jf4mr1zYb1nF1Xn+wR7g@mail.gmail.com>
Subject: whether this is your correct email address or not
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
Reply-To: nelsonyakubu1@yandex.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend,

My Name is Mr Yakubu Nelson, I have been searching for your
contact since you left our country some years ago .I do not know
whether this is your correct email address or not because I only used
your name initials to search for your contact in the internet .In case
you are not the person I am supposed to contact,

please see this as a confidential message and do not reveal it to
another person but if you are not the intended receiver, do let me
know whether you can be of assistance regarding my proposal below
because it is top secret.

I am still working with the central bank as the legal advicer where we met
during your
official visit to my country.I am about to retire from active Bank
service to start a new life but I am sceptical to reveal this
particular secret to a stranger .You must assure me that everything will
be handled confidentially because we are not going to suffer again in
ourlife.any more

It has been 10 years now that most of the greedy Politicians
used our bank to Launder money overseas through the help of their
Political advisers. Most of the funds which they transferred out of
the shores of Africa was old and oil money that was supposed to have
been used to develop the continent. Their Political advisers always
inflated the amounts before transfer to foreign accounts so I also
used the opportunity to divert part of the funds hence I am aware that
there is no official trace of how much was transferred as all the
accounts used for such transfers were being closed after transfer,I
acted as the bank Officer to most of the politicians and when I
discovered that they were using me to succeed in their greedy act,

I also cleaned some of their banking records from the Bank files and
no one cared to ask me because the money was too much for them to
control. They laundered over $2bn during the process .As I am sending
this message to you, I was able to divert more than Fifty Million
Dollars ($50m) to an escrow account belonging to no one in the bank.
The bank is anxious now to know who is the beneficiary to the funds
because they have made a lot of profits with the funds.

It is more than Eight years now and most of the politicians are no
longer using our bank to transfer funds overseas. The $50M has been
lying waste but I don't want to retire from the bank without
transferring the funds to a foreign account to enable me share the
proceeds with the receiver. The money will be shared 60% for me and
40% for you.

There is no one coming to ask you about the funds because I secured
everything.I only want you to ass is me by providing a viable bank
account where the funds can be transferred. You are not to face any
difficulties or legal implications as I am going to handle the
transfer personally. If you are capable of receiving the funds, do let
me know immediately to enable me give you detailed information on what
to do.

For me, I have not stolen the money from everyone because the other people
that took the whole money did not face any problems. This is my chance
also to grab my own but you must keep the details of the funds secret
to avoid leakages as no one in the bank knows about the funds.

Please supply me the following:

Your current contact address and Telephone Numbers. Whether you will
be able to come down again to my country to meet me before the
commencement of the transfer
I shall intimate you on what to do when I get your confirmation and
acceptance. If you are capable of being my trusted associate, do

declare your consent to me.PLS REPLY HERE) yakubunelson@yandex.com

Yours Faithfully,


Mr Yakubu Nelson
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
