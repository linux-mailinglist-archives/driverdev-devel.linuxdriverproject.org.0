Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B5F1B545
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 13:51:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D292D87697;
	Mon, 13 May 2019 11:51:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LtOE41lWwp-8; Mon, 13 May 2019 11:51:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4518786F85;
	Mon, 13 May 2019 11:51:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 58C731BF2C1
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 11:51:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 52B9A86365
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 11:51:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TILCmHaH0RvD for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 11:51:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8DBA88613C
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 11:51:37 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id a39so13472223qtk.2
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 04:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=t8yAtj7nmBHnHBnJIByVnjMSoMoIN5j2dbyO2PKJ4fQ=;
 b=bbF8C+V7PJ9UJUmZmSKXroGtwJWsDj0aNqrKA9U0SacBeid50FVtI2/uZnlChMPX5b
 wd/lb/hjPOHKTkuJ5wAo0GwSgB6YXjFpmLfohvOve2cQpA7nl3icrjEXBKTRK4tlt2A9
 oUcglGoamT+nYdVv1pBcQn95GTRboYp2PDM+MiHO8QPRnM7W1GSlXXUZBu437qsmeoGd
 yZUarXPl/xiUTn+Ub363H4aUMT3EnB98W8CgtGQu5Q7yW17+lnmdILo6LmREUrMmMZpM
 QWKUWhSSrdPmN/NTHRk0TdAoOrYAfb5Se7QMQde4MrSEFofbpzartteieMZSmPl8jSOE
 7v+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=t8yAtj7nmBHnHBnJIByVnjMSoMoIN5j2dbyO2PKJ4fQ=;
 b=stlDwx5mOIEFy2/w4fasb9PN6mYOchJCMHPksIgb5JJaf6qcuHOqy9HcOsNzEpakHK
 ywpttRRrOpD2LaeWUvHGcBWE3SxJBKiBOkj44KC721s33SEjiDCcyhEM2JXTx+jdE0/E
 OaoLLeUe4HXGzQN03jGLyWL70/iVdWGA6GJ9rVGdI6ZxFNQv+6hq6tZBwBpHpiaquqYV
 efUpT88jvMa2InGDzdrjqIRNTI2ZJEc3FXqY8+C4O8IaTh7npsCmSAIsliB8yPRaWzVa
 P6J9qNEfyFx04F3srUslr2ebkh8pWC/hSnIxzdLa++v5/nh0kaPYDpkSi+uYadLnf09m
 4X8w==
X-Gm-Message-State: APjAAAXV4ACw+tuTMA50p0plXJ2k8OuXaIyAaoDuQsJREWU4g7mAdBh5
 S+sOTkv0XvDx/eoMWMXGF7QZ4DhcvQKZBQCDj4w=
X-Google-Smtp-Source: APXvYqwVZ9IuVv8P7Gew7S+UIdw5/vQK/97kaThDz+83jZI4GIlm3JU6iydZzK1vM9CxW12e+axj9BTauvMc4q667Nk=
X-Received: by 2002:a0c:8832:: with SMTP id 47mr21953560qvl.88.1557748296273; 
 Mon, 13 May 2019 04:51:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:b86:0:0:0:0:0 with HTTP;
 Mon, 13 May 2019 04:51:35 -0700 (PDT)
From: "eboueazima56@gmail.com" <mr.kamil.kacer.488@gmail.com>
Date: Mon, 13 May 2019 04:51:35 -0700
Message-ID: <CAL0vq8tZT1Tk17YHjsyWYn3J8u6RTqCO6rthj85Fce-FNxd5YA@mail.gmail.com>
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
Reply-To: mr.aboueazima@aol.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

FROM Mr.Aboue Azima
AUDIT& ACCOUNT MANAGER
BANK OF AFRICA (B.O.A)
OUAGADOUGOU BURKINA FASO
WEST AFRICA.

Dear Friend,

With due respect, I have decided to contact you on a
businesstransaction that will be beneficial to both of us. At the bank
last account and auditing evaluation, my staffs came across an old
account which was being maintained by a foreign client who we learn
was among the deceased passengers of motor accident on November.2003,
the deceased was unable to run this account since his death. The
account has remained dormant without the knowledge of his family since
it was put in a safe deposit account in the bank for future investment
by the client.

Since his demise, even the members of his family haven't applied for
claims over this fund and it has been in the safe deposit account
until I discovered that it cannot be claimed since our client is
aforeign national and we are sure that he has no next of kin here to
file claims over the money. As the director of the department, this
discovery was brought to my office so as to decide what is to be
done.I decided to seek ways through which to transfer this money out
of the bank and out of the country too.

The total amount in the account is 18.6 million with my positions as
staffs of the bank, I am handicapped because I cannot operate foreign
accounts and cannot lay bonafide claim over this money. The client was
a foreign national and you will only be asked to act as his next of
kin and I will supply you with all the necessary information and bank
data to assist you in being able to transfer this money to any bank of
your choice where this money could be transferred into.The total sum
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
choice. May God help you to help me to a restive retirement, Amen,And
You have to contact me through my private e-mail at
(mr.aboueazima@aol.com)Please for further information and
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

Mr.Eboue Azima
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
