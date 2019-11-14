Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FC4FC9D6
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 Nov 2019 16:23:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 658F9253A7;
	Thu, 14 Nov 2019 15:23:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ef8VDVJSsf-P; Thu, 14 Nov 2019 15:23:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 08BA22420F;
	Thu, 14 Nov 2019 15:23:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D2641BF97F
 for <devel@linuxdriverproject.org>; Thu, 14 Nov 2019 15:23:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 050A688D1D
 for <devel@linuxdriverproject.org>; Thu, 14 Nov 2019 15:23:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mCHpd+4L1ykI for <devel@linuxdriverproject.org>;
 Thu, 14 Nov 2019 15:23:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B8FF384FA4
 for <devel@linuxdriverproject.org>; Thu, 14 Nov 2019 15:23:33 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id d83so5661789ilk.7
 for <devel@linuxdriverproject.org>; Thu, 14 Nov 2019 07:23:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=VgHib5p25couFj1QUfpO3Tvrh1VTOEUNoZKSgR4JQrY=;
 b=O9fezp1E8yTMEagmnrQ0SnNuk0dSOJvoB8vtEeM5aJGip8LloZpsqKyA47ZjD8TlRE
 Rf5I/ah9te7fa6lfhGDTt5hWM+v5IuC0EpNBdfk4Guf5ZzZXV/LwMk75SzgeKNN6DXPG
 yJUvrN6bOB9Q3zpLw6dCfhahSSxS+J7Tyk2SdNQBE5yh+fADtMElyS49s4Pzxe7eQGh8
 a5bfiIQldf3JZFO9enQG98V0jE5m+VULGlaXSHm6y4ILI38gqaB8Nsz7Wcrmtgv0qBe4
 0wl36gae/O9w6qSsrN7AZNyUTvhyzuTW4cw//YbCGVsVXxaLFQNFW+4EQujk7/7P9tGU
 S+sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=VgHib5p25couFj1QUfpO3Tvrh1VTOEUNoZKSgR4JQrY=;
 b=oDeWssfhL13p8i1N34/uwo6FjPpnJ50w2r0NRFlX7FWCSACwPgFqmqSh+q9N59/2nS
 T8aDk3Ludm2zy6PJ/AC0loyR2bYFgvMnnMN48lBOd855hkbs8cd9xFDz4Ldert/dKxvz
 eNC4mu8XRDgCVAbKYy64+ls7o/2HR94indc8rAmLX3KI3N1d4rPsHHojOSIm1+7ZLhhg
 A5DLm8HymJCWZnhOORO0L4ntG4KcN7nClCxuwQ6b7Ykhe7Oc0vHG/vXoZuoVp9R3SAdD
 PxxU7YxIN0D0iJSqc2cBMILVrl67pAclK8uIXatq3TushoNH/gPfosW9j+kLSnJHfkwS
 AeBg==
X-Gm-Message-State: APjAAAXNMG8N4pfhrQhakWuZmJO0WSOwzRK2wxm1nJud9Kl/Vv7tmULD
 hNK+0yibmlfWQZQB9xqiG5vuFM4uEvkx+axWOXk=
X-Google-Smtp-Source: APXvYqyapFrgC/HH7TvEKNq8KtnA2Ufak0IrRajioFtO1m6SuXLPEOZ5c7EyBMjokZqKOp61F0vXRdQDIdH9BPAlLYc=
X-Received: by 2002:a92:c152:: with SMTP id b18mr10721426ilh.71.1573745012954; 
 Thu, 14 Nov 2019 07:23:32 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a92:850a:0:0:0:0:0 with HTTP; Thu, 14 Nov 2019 07:23:32
 -0800 (PST)
From: "Mr. Abdoulaye DIALLO" <mr.seydououmar@gmail.com>
Date: Thu, 14 Nov 2019 17:23:32 +0200
Message-ID: <CAJQOeY+DOokDK_gwt85=84AK4JiaJjAtD7B9WosQYkHz=VBDmw@mail.gmail.com>
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
