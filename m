Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D43BF282
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Sep 2019 14:07:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F2C1D87E3F;
	Thu, 26 Sep 2019 12:07:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ERzsyYtKJ7EC; Thu, 26 Sep 2019 12:07:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 702DB87DAF;
	Thu, 26 Sep 2019 12:07:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 45B7D1BF33C
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 12:07:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 40163861F9
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 12:07:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3iv7i0TXoFHe for <devel@linuxdriverproject.org>;
 Thu, 26 Sep 2019 12:07:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8A472861F1
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 12:07:32 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id h33so1723177edh.12
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 05:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=4kdRQh2RBnKVNiw/sK5zF5fAJlJg/+xzw8chsJkNqc4=;
 b=IneNk5tCbi1MKMZHwTC00RMq+guMvzSW34OwZg33wFqDweihOVhHhA9yHYodyxLoOn
 fQWGMC0yqNwV7qptENM0guLu9VyzC8siNHJKojkKjrxPRT3QRqfdWZomvy/dMC0aKsKN
 UuaHmUTmLCM0F1rj8inzzq6+YO6Y7VqUgxiTWHly2xbA/b1O9/C6Y9cUX+ZYxopeB1OX
 eqFk7QxMCyocysB3ZuA8BnHdmazLejpRo3nSJKZnVt6LlOkYZzGvJtVMnfQKuY9vhToe
 0VzJgzaKVwMlg21f/Li08nVk2QdOHCiGlXrCY241uTRTffh7d5SE41553v/wuhlTqEyv
 gj7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=4kdRQh2RBnKVNiw/sK5zF5fAJlJg/+xzw8chsJkNqc4=;
 b=jtjFyFwbl1pVfj2IWUqyGGK8QJzrzw+5s5SuvjDUvLVTX+ZZ1tuZRqpVpwtPb16eJn
 mcRbDgEBpBsj8Bg3gEtGOV6+P+05VP7Z8PeoW5rUTUSd8bkZ4Yy+jW9cwO3uGf6+D+VD
 H3tBp1On91h3JKX9QJqO4R0nZltOYNXZ0LcTL5N5E00LgL7nOMyY3YVzaTnp3Iz0kcWt
 n5JxY80liLrfL1KSQEfkxoGErLBNDtKyieeXXEA1m69dEcT/wYQli2XyJJliIVbyh7jo
 +TApW67QxBoKxKDJXg/CUMNZC3TWEHEMVIlaKvVsu9dpUkV5Iu0Y5nV0qoVyRNB7O0na
 TtQA==
X-Gm-Message-State: APjAAAUqRHxaBYGo09ZywvCwreP+FuA5gYgI1vf+BsvYYWsl9p+LgvuN
 kHUNxRPiqIs0Uzn0LYduu7tu0nbdpkDR9dhKUXs=
X-Google-Smtp-Source: APXvYqzwYV7HXMsXQP1GY4i8eNYOb0XSS7XJaWGhs+CvoQKsJn4ZKg5XGMczGhOZQpSY/IMOEEgZnQG47cI4ZtJIjKM=
X-Received: by 2002:a50:a939:: with SMTP id l54mr3167834edc.214.1569499650960; 
 Thu, 26 Sep 2019 05:07:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a50:ef03:0:0:0:0:0 with HTTP; Thu, 26 Sep 2019 05:07:30
 -0700 (PDT)
From: "Dr.JOHN DAVIDSON Dir IMF Benin." <eco.bank1204@gmail.com>
Date: Thu, 26 Sep 2019 13:07:30 +0100
Message-ID: <CAOE+jACD4qkECQnak8N196AhhJeZQcA37=vY7zM8cn=77hiJTw@mail.gmail.com>
Subject: CONTACT,JP Morgan Chase Bank NY USA for your funds transfer
 US$16.5million Dollars deposited this morning,
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
Reply-To: jpmorganchasebank.ny13@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

ATTN,DEAR
CONTACT,JP Morgan Chase Bank NY USA for your funds transfer
US$16.5million Dollars deposited this morning,
Director, MS.Linda B. Bammann
The Bank is waiting to hear from you before transfer release to your
bank. This is to avoid any hitch problems. CONTACT this bank once to
receive your transfer today.
Director, MS.Linda B. Bammann
Emails/ jpmorganchasebank.ny13@yahoo.com
Telephone. (603) 636-4063

Note,you can only text JP Morgan Chase Bank Ny USA Director, MS.Linda B. Bammann
On her telephone No#. She refuse to receive calls due to numerous
conversations from outside of the Country, So you had done well text
her on the given phone number or email. Finally For your
informations,I have paid the related transaction service fees for
you,such as Deposit and confirmations charges, so small money you been
required to pay is your funds transfer fees, sum of $90.00.only to
enable the bank complete transfer to your bank account immediately.
God bless you,
Dr.JOHN DAVIDSON
Dir IMF Benin.

Chase Bank is considered as one of the biggest and leading service provider
in the United States. The bank is a top listed national bank located in
Manhattan New York City. It is also one of the most trusted commercial and
consumer banking services on the planet.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
