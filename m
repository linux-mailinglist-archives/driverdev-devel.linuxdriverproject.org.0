Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E37D4799E2
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Dec 2021 10:09:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2EFC742276;
	Sat, 18 Dec 2021 09:09:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vi2lQSWmh24M; Sat, 18 Dec 2021 09:09:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4405E42267;
	Sat, 18 Dec 2021 09:09:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2881E1BF5F5
 for <devel@linuxdriverproject.org>; Sat, 18 Dec 2021 09:09:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0FE6D40010
 for <devel@linuxdriverproject.org>; Sat, 18 Dec 2021 09:09:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LcLgZmvSNh7n for <devel@linuxdriverproject.org>;
 Sat, 18 Dec 2021 09:09:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com
 [IPv6:2607:f8b0:4864:20::b2c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B689F40002
 for <devel@driverdev.osuosl.org>; Sat, 18 Dec 2021 09:09:13 +0000 (UTC)
Received: by mail-yb1-xb2c.google.com with SMTP id 131so13188884ybc.7
 for <devel@driverdev.osuosl.org>; Sat, 18 Dec 2021 01:09:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=nJbbcwBBkbzpUfnkfZBLgl8IFNcpVhFpEqN/1T5R5gg=;
 b=nraQqsxZEKDYOsRVD6EZI9nkGGccD3wPoQnpxDo4jiBF51wpGu4eriClhCcNQ+PkTB
 C2nCJzcaBtHGxnm+e9LT5nuNM+Xvq97esjhICbo513bBYxJZc2hkjKqjQdScqOsEp5F1
 KpEGVcFbDEh/jO/mtz/GcUsHGpKXkRhV5AYWvPOM4/DOuZhFIp03bj7h3s6D/pVE9sKV
 emWD/nFdDgmaZupg/sjyRzwzgHGbaxDqr7APb2leVn+9Y8zrgmkFIvQuRBVI1DcXQiBs
 WZV2FUvU3Q4TW5Q9DEGUvb9Lf0J9yKIk/r1P/8as1I8wxnPvuzMHiGg+hmKGZrCn4llg
 DP6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=nJbbcwBBkbzpUfnkfZBLgl8IFNcpVhFpEqN/1T5R5gg=;
 b=H04JatO2QYezinFzSEOsO+o0OrTnSHzwT7U96RirGjJ8Ws52m2IBHR6z7dUrbOq9di
 mHmTqZLj1F40wLffY6rWQh1Bz0Dtp4F4oWRam6QyWC1l+hpC5dNn6CgpNU4jp+AgjPQp
 m8LlkjOT2ExyWY+C0kW3AJyFKossKsdN20fAq3vRrXLTu5zta3BN0y2VDowx8s+rsPbq
 tVz2fiXWeCFap7KjV6mWgtNntzyu4RMqy7em1SnyqBlPjLbnIhZcHKWJEnRZjRIFkxYr
 gUPFegOa4Aun3Pp1RcSPd+5sklaoNhhSsvyABwj2IVt8QoPYZXAWg+0995n/zO572RdK
 uVFQ==
X-Gm-Message-State: AOAM5320OoI5hl+hgTlAL+0GgsnqNPVQL+ar6FBvdjFAKfOGaPlfWIUA
 x0FLDef039LIVjr7us0yxsOeUylfXfN0mXPXTyE=
X-Google-Smtp-Source: ABdhPJxjhi+EGJ44o0Jrd2LpCPRg7cDZkixzpGUAmgw5s7UtP05ZLRsWOSAi1AFQSlFDbWg9QmJruuvedBfJjSomCVY=
X-Received: by 2002:a25:dfd1:: with SMTP id w200mr9071568ybg.359.1639818552666; 
 Sat, 18 Dec 2021 01:09:12 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7110:b00d:b0:11b:ec90:5b7b with HTTP; Sat, 18 Dec 2021
 01:09:12 -0800 (PST)
From: Adama Kafando <asemotauyi7777@gmail.com>
Date: Sat, 18 Dec 2021 01:09:12 -0800
Message-ID: <CAPrC-pw45SJRyPo5psB0Woa7Qpe1tnA1O_2skhJH01Q6Pxt1Lg@mail.gmail.com>
Subject: VERY VERY URGENT.
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
Reply-To: mr.adamakafando2015@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend,

I Mr.Adama Kafando, With due respect, I have decided to contact you on a
business transaction that will be beneficial to both of us.At the bank
last account and  auditing evaluation, my staff came across an old
account which was being maintained by a foreign client who we learned
was among the deceased passengers of a motor accident on
November.2010, the deceased was unable to run this account since his
death. The Account has  remained dormant without the knowledge of his
family since it was put in a  safe deposit account in the bank for
future investment by the client.

Since his demise, even the members of his family haven't applied for
claims over this fund and it has been in the safe deposit account
until I discovered that it cannot be claimed since our client
isaforeign national and we are sure that he has no next of kin here to
file claims over the money. As the director of the department, this
discovery was brought to my office so as to decide what is to be
done.I decided to seek ways through which to transfer this money out
of the bank and out of the country too.

The total amount in the account is USD $18.6 million with my positions
as staff of the bank,I am handicapped because I cannot operate foreign
accounts and cannot lay a bonafide claim over this money. The client
was a foreign  national and you will only be asked to act as his next
of kin and I will supply you with all the necessary information and
bank data to assist you in being able to transfer this money to any
bank of your  choice where this money could be transferred into.The
total sum will be shared as follows: 50% for me, 50% for you and
expenses incidental occur  during the transfer will be incur by both
of us. The transfer is risk free on both sides hence you are going to
follow my instruction till the fund  transfer to your account. Since I
work in this bank that is why you should  be confident in the success
of this transaction because you will be updated with information as
and when desired.

I will wish you to keep this transaction secret and confidential as I
am hoping to retire with my share of this money at the end of the
transaction  which will be when this money is safe in your account.I
will then come over to your country for sharing according to the
previously agreed percentages. You might even have to advise me on
possibilities of investment in your country or elsewhere of our
choice. May God help you to help me to a restive retirement,Amen,And
You have to  contact me through my private e-mail
at(mr.adamakafando2015@gmail.com)Please for further information and inquiries
feel free to contact me back immediately for more explanation and
better understanding I want you to assure me your capability of
handling this  project with trust by providing me your following
information details such as:

(1)NAME..............
(2)AGE:................
(3)SEX:.....................
(4)PHONE NUMBER:.................
(5)OCCUPATION:.....................
(6)YOUR COUNTRY:.....................

Yours sincerely,
Mr.Adama Kafando.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
