Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0830A542F
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 12:40:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5D66787D56;
	Mon,  2 Sep 2019 10:40:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jy4qzIqxUo4A; Mon,  2 Sep 2019 10:40:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 87F5587CEE;
	Mon,  2 Sep 2019 10:40:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BEF581BF47A
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 10:40:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BB7A784CBC
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 10:40:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a7hHEYp+G+B6 for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 10:40:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 083BF8475F
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 10:40:32 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id s21so28332649ioa.1
 for <devel@driverdev.osuosl.org>; Mon, 02 Sep 2019 03:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=BrYjaClXVx+uPifSJclfUi0yOnEtosbjjweRJo+C/to=;
 b=PcDAluxmCoO/lJ+HM6JeYIjdx+sHQwyiEhfOwNThR2FDXpZVwqggysRRwIJQzYZ1lt
 NHv8VerHaSkIUGzyg7wZc+54iz4MDeM9rhjH61R6w5RY8BGir9uNhS/jIUtnAS4/uwbA
 dFFyeUWAXPlWCBxIwNw0L/HBuOKYokPr71d0iAL3aDZ4kRnCHf3BYf+DPr/9vWYQYexG
 /aJcavXTNyM22uthPjyT0s6dRNl2AEOS+G4NFCQmZPvMyTgWD5fnmj01uXi1eHrvrKKr
 0rLjIOLr2HP7ras/z/afVsFK4PJR/ww233CbEElLiY0J0rDZzfHe30sIR064pRPb5JAT
 XnKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=BrYjaClXVx+uPifSJclfUi0yOnEtosbjjweRJo+C/to=;
 b=eeOMVMJP5mvzhvHKLyYOA7ghMRZtJtQqfjXXIfJNRCFFSpKSfAsyeqFUM406raHO82
 BjxfQilxYd0ZFAN6OxXepPcXMm+dgTC2/OqBAjjEpIT3T67DIz8L5NPCwoC1uDAu2Wer
 ARUdj0N5s3HGE0CEPOvj4QZqt0We1/BfMLRaqxsTdgfs0MbHUuvT93Pt+H0hRW1F45HW
 QA906nFHazVWPnX4nglM2IYCPvmFi/JffYUQGGNTlVGuRAA647/3NWsqoIj2bz6T3cdM
 Wb5TysMQzlsTx1yjsvwfVuolm04U7rcXpvIa4clhnoy+bgMD3nBIE2xPuSBEzKg0gMfu
 +kzw==
X-Gm-Message-State: APjAAAXt1J9ceUTzTDkmPOQ/gK+s2SOoeiq26s8OagdnHZr8HcUrYKJC
 yXXJonZGaGi8U+DBp7g673McSJ+HfufKiP9lhL8=
X-Google-Smtp-Source: APXvYqzpONyVA6fMNge7fAExzDk0x6sAOrjm5h4a48gNdeMI9sjchzZ1wmPXL7d22wD86qA7bf/nOqqCBbocPjCfLmE=
X-Received: by 2002:a02:8563:: with SMTP id g90mr15264959jai.63.1567420831211; 
 Mon, 02 Sep 2019 03:40:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5e:8d13:0:0:0:0:0 with HTTP;
 Mon, 2 Sep 2019 03:40:30 -0700 (PDT)
From: " Mr.Abdellatife Jouahri" <princessrokiakasmil2009@gmail.com>
Date: Mon, 2 Sep 2019 03:40:30 -0700
Message-ID: <CAAsQ=g1wi6Ubdy5PoeGGASvh=PGRBDiEUV6v8zu4gEQxfxnUrA@mail.gmail.com>
Subject: VERRY VERRY URGENT
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
Reply-To: abdellatife56jouahri@aol.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

FROM MR.Abdellatife Jouahri
AUDIT& ACCOUNT MANAGER
BANK OF AFRICA (B.O.A)
OUAGADOUGOU BURKINA FASO
WEST AFRICA.

Dear Friend,

With due respect, I have decided to contact you on
a business transaction that will be beneficial to both of us. At the
bank last account and auditing evaluation, my staffs came across an
old account which was being maintained by a foreign client who we
learn was among the deceased passengers of motor accident on
November.2003, the deceased was unable to run this account since his
death. The account has remained dormant without the knowledge of his
family since it was put in a safe deposit account in the bank for
future investment by the client.

Since his demise, even the members of his family haven't applied for
claims over this fund and it has been in the safe deposit account
until I discovered that it cannot be claimed since our client
is a foreign national and we are sure that he has no next of kin here to
take claims over the money. As the director of the department, this
discovery was brought to my office for me to decide what is to do .I
decided to seek an option through which to transfer this money out of the
bank and out of the country too.

The total amount in the account is 18.6 million with my positions as
staffs of the bank, I am handicapped because I cannot operate foreign
accounts and cannot lay strong claim over this money. The client was
a foreign national and you will only be asked to act as his next of
kin and I will supply you with all the necessary information and bank
data to assist you in being able to transfer this money to any bank of
your choice where this money could be transferred into. The total sum
will be shared as follows: 50% for me, 50% for you and expenses
incidental occur during the transfer will be incur by both of us. The
transfer is risk free on both sides hence you are going to follow my
instruction till the fund transfer to your account. Since I work in
this bank that is why you should be confident in the success of this
transaction because you will be updated with information as at when
desired.

I will wish you to keep this transaction secret and confidential as I
am hoping to retire with my share of this money at the end of
transaction which will be when this money is safety in your account. I
will then come over to your country for sharing according to the
previously agreed percentages. You might even have to advise me on
possibilities of investment in your country or elsewhere of our
choice. May God help you to help me to a restive retirement, Amen ,And
You have to contact me through my private e-mail at
(abdellatife56jouahri@aol.com )Please for further information and
inquires feel free to contact me back immediately for more explanation
and better understanding I want you to assure me your capability of
handling this project with trust by providing me your following
information details such as:

(1)NAME..............
(2)AGE:................
(3)SEX:.....................
(4)PHONE NUMBER:.................
(5)OCCUPATION:.....................
(6)YOUR COUNTRY:.....................

Yours sincerely,
Mr.Abdellatife Jouahri
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
