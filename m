Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1ECFC9D7
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 Nov 2019 16:24:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 52F9689DF4;
	Thu, 14 Nov 2019 15:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lHUPMu3u2Ocp; Thu, 14 Nov 2019 15:24:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E7AEA89A22;
	Thu, 14 Nov 2019 15:24:03 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 553351BF400
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 Nov 2019 15:24:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 51F0789976
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 Nov 2019 15:24:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AE7CcehogymX
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 Nov 2019 15:24:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com
 [209.85.166.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 325E789969
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 Nov 2019 15:24:00 +0000 (UTC)
Received: by mail-il1-f193.google.com with SMTP id r9so5670984ilq.10
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 Nov 2019 07:24:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=VgHib5p25couFj1QUfpO3Tvrh1VTOEUNoZKSgR4JQrY=;
 b=J4V+wV7xFTMgbKenszqDXf54rQ8LJ0kAy8W9Cd5Bkvp5pQKyVF1Qa4W0cVa2ne1E8b
 T7hXyUIjYv5VPuAFRCwaVS6yFX2guhFBLeeR3diumXpQ6IPaY6tjjgkfOllCgE8gV9Nx
 XwLTb2fXBiW4nzH7Dw2F7ceZk4TBLfZYKfhUXT3+h+g8pUFhknGz9/JVEo1zmCNZdl0z
 D3FWn6CvD1mx8A9Hd+8kSEFEaZbhx4PmGuMRQfXwXdEBJCw634+YywL+ujFhVo8lJU5q
 Pu9YdL7MB/KJI6HOldenOYZMv08Xdn9SUj7bSbpW9q6W4MzMceHi7PcaGodAmkMMwyYb
 jV5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=VgHib5p25couFj1QUfpO3Tvrh1VTOEUNoZKSgR4JQrY=;
 b=tRhajBFw+kBUZXl4v6Sa6xdlAA/w3tlTyaRZY0mwObiFRoGlDX+0/C500UePNJph7f
 xoYzBIYFTq9En6oaoPz+4qGE4irTbKF4HTQAyp16glsFu+XS3NpSS5wBNmhMFk+wUfZh
 mPPqH9ImmNU0KS85A0PB9HT7vOuyvu43up3l1kkRMc+Jy4/sMayHE3JUp42ZgPbxmXtv
 T7F2Bb0AhzdYUvpWNCg30h9ndwgKneSTLE9p6Vx8jme2x90dgOzxQs9sZ/MUpdYteAWR
 ZCh+VSdfO1aqMpR6TpMnaUEcqM/0kf31QON2cC9hQnyFOHkTNc4A1ZK5VUoKnwRH6kNv
 iqrA==
X-Gm-Message-State: APjAAAVVLB4ZaLBVJzlxmv6RrBJDuZk2ZR8FJcCWwxyvMO84mfOJ5SEV
 qURbZKugUVGwVNM8O1E8/r0/3JqqHlKf2AvcDoU=
X-Google-Smtp-Source: APXvYqwAe+ZnbVCncqvi5+6agVER8/LbPoN4YpqcVQrJ/DqiYMMi8I55I1ak3/IDPGO/EYlN1A7MnDlWCbypRXwfYYM=
X-Received: by 2002:a92:5ac1:: with SMTP id b62mr11384316ilg.46.1573745039400; 
 Thu, 14 Nov 2019 07:23:59 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a92:850a:0:0:0:0:0 with HTTP; Thu, 14 Nov 2019 07:23:57
 -0800 (PST)
From: "Mr. Abdoulaye DIALLO" <mr.seydououmar@gmail.com>
Date: Thu, 14 Nov 2019 17:23:57 +0200
Message-ID: <CAJQOeY+KAozq-oURiZr4KhKzzSr=cmhGxm7qNMkeXmAdiR+gpg@mail.gmail.com>
Subject: I look forward to hear from you.
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
Reply-To: abdoulayediallo1973@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Good Friend,

Good Day,

I hope all is well. Considering the fact that i don't know you in
person or even have seen you before but due to the true revelation
that i should share this lucrative opportunity with you, i have no
choice other than to contact you. So, kindly consider this message
essential and confidential.

May i use this opportunity to introduce myself to you, I am Mr.
Abdoulaye DIALLO, from Burkina Faso in West Africa, the Audit and
Account Manager Bank of Africa (BOA) in Ouagadougou Burkina Faso West
Africa.

I had the intent to contact you over transfer of fund worth the sum of
Ten Million Five Hundred Thousand US Dollars. (Us$10.5m) for the
betterment of our life, i agree that 40% of the total amount will be
for you and 60% for me.

I need your urgent response on assurance of trust that you will not
deny my share when the fund is transferred to your personal bank
account.

Reply with your information as i stated it bellow, once i receive your
information i will give you more details of this transaction and how
you will apply to our bank on how to transfer the fund into your bank
account.

(1) FULL NAMES:
(2) PRIVATE PHONE NUMBER:
(3) OCCUPATION:

Make sure you keep this transaction as top secret and make it
confidential till we receive the fund into your bank account that you
will provide to our bank, Don't disclose it to anybody, because the
secret of this transaction is as well as the success of it.

I look forward to hear from you.

In Sincerity,
Mr. Abdoulaye DIALLO.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
