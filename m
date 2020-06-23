Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB20205070
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 13:16:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 19C76203ED;
	Tue, 23 Jun 2020 11:16:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id goBNhzD7KxOK; Tue, 23 Jun 2020 11:16:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 340962050B;
	Tue, 23 Jun 2020 11:16:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 27CCB1BF3E1
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 11:16:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 249B488275
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 11:16:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5+gLUsWPWJwG for <devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 11:16:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B56EB88731
 for <devel@driverdev.osuosl.org>; Tue, 23 Jun 2020 11:16:38 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id l10so20099177wrr.10
 for <devel@driverdev.osuosl.org>; Tue, 23 Jun 2020 04:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=D7l/Y2nU4ivOXB3kYNarWKNDy1SUWuawPt7q4q/Bhv4=;
 b=Svs3YjwLlCHH1hpBFaBvYFdbmx2H1H8oWdDssHLarhnYCQEKxMAocbGwaj4/AwqNFE
 EDy3xmivyOrpMLbbqrHqjTRvM/3WmnWRZcXNDumD5jv+w7a9D1pOs81Qkw+NnZxoTv2Z
 +DF5VDxaClsSnvuDOkKoJmszM7hgB2ruywgI732+tH30+NsinBVRwuOJAHR6zOYRcCQW
 psOtqAy/6uHii5iszKOKFbh8oVjR0h1XM7/POzafX0W+j26PIC7IX299MzlDA+KTRvn9
 7wS3XcQvIAejL5KHcdWDPalzCdtt+D48oSHCopJlNbT212Efr11VqwzRCtejAEKx71Xk
 VEFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=D7l/Y2nU4ivOXB3kYNarWKNDy1SUWuawPt7q4q/Bhv4=;
 b=N+VRYG03ktyEV+UJ7vY29fIxJaf9vE1PE4ipDTHcjOmK50PQuTVs7KQ1NB0bGs3BLi
 ZXfYmRWISH82QoBSbF/qHDsFEM4zkdJMTBVYv0QLpJ2wY+Pgi/4qwpPumjHJcnpRI6wq
 gum0NjAhuhezlUyvW8GNgNfPENaEUqW8iYd4CstcIhnvdeqVtk5a0HT+F9aCQzIV2ZB0
 e7YKGRjyMaC7rjGahFoEILdFMhHdVBxnhPtxrYsmho2epssfyPYDjG7jXV2cJMHOPdvN
 OSLaGfJWUyWBtE1tEwvmkCkfM6u3bOGQsnIft97P5WI+ZmgwqxAZjDLZVT31QO6FA6A+
 6xMQ==
X-Gm-Message-State: AOAM531l7T+8qwov2kK+lutEeF1EswMJBHbu8dkZqnLpF+ycqhv1Ohl6
 LM4O3ko4aLpqQNyOWTP9CWfLZyuqhA8wu/SL3Qg=
X-Google-Smtp-Source: ABdhPJyALlyuF+HHNurDBPycXJdQGdinuoT9+1vAMtidu4iIc/fc5+hhmYgV+3SQ9QAFIrD2bzrgfjCcDSzEOrVFHJU=
X-Received: by 2002:a5d:55c2:: with SMTP id i2mr24783684wrw.225.1592910996942; 
 Tue, 23 Jun 2020 04:16:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a1c:f002:0:0:0:0:0 with HTTP; Tue, 23 Jun 2020 04:16:36
 -0700 (PDT)
From: Sarah Koffi <paulwiliam782@gmail.com>
Date: Tue, 23 Jun 2020 12:16:36 +0100
Message-ID: <CAHqcnY1H2iupBAz=FJNyXEV5G9HGjx-S86dp5pfwpHq27rjDWw@mail.gmail.com>
Subject: Greetings From Mrs. Sarah Koffi
To: sarahkoffi389@yahoo.co.jp
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
Reply-To: sarahkoffi389@yahoo.co.jp
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings From Mrs. Sarah Koffi

I'm contacting you based on your good profiles I read and for a good
reasons, I am in search of a property to buy in your country as I
intended to come over to your
country for investment, Though I have not meet with you before but I
believe that one has to risk confiding in someone to succeed sometimes
in life.

My name is Mrs. Sarah Koffi. My late husband deals on Crude Oil with
Federal Government of Sudan and he has a personal Oil firm in Bentiu
Oil zone town and Upper
Nile city. What I have experience physically, I don't wish to
experience it again in my life due to the recent civil Ethnic war
cause by our President Mr. Salva Kiir
and the rebel leader Mr Riek Machar, I have been Under United Nation
refuge camp in chad to save my life and that of my little daughter.

Though, I do not know how you will feel to my proposal, but the truth
is that I sneaked into Chad our neighboring country where I am living
now as a refugee.
I escaped with my little daughter when the rebels bust into our house
and killed my husband as one of the big oil dealers in the country,
ever since then, I have being on the run.

I left my country and move to Chad our neighboring country with the
little ceasefire we had, due to the face to face peace meeting accord
coordinated by the US Secretary of State, Mr John Kerry and United
Nations in Ethiopia (Addis Ababa) between our President Mr Salva Kiir
and the rebel leader Mr Riek Machar to stop this war.

I want to solicit for your partnership with trust to invest the $8
million dollars deposited by my late husband in Bank because my life
is no longer safe in our country, since the rebels are looking for the
families of all the oil business men in the country to kill, saying
that they are they one that is milking the country dry.

I will offer you 20% of the total fund for your help while I will
partner with you for the investment in your country.
If I get your reply.

I will wait to hear from you so as to give you details.With love from

 i need you to contact me here sarahkoffi389@yahoo.co.jp

Mrs. Sarah Koffi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
