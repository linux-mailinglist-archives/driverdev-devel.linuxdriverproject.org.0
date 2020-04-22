Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 941A91B37C6
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Apr 2020 08:46:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B2B74881B7;
	Wed, 22 Apr 2020 06:46:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yRAE2iqextyn; Wed, 22 Apr 2020 06:46:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1F79087F8E;
	Wed, 22 Apr 2020 06:46:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 10B391BF3DD
 for <devel@linuxdriverproject.org>; Wed, 22 Apr 2020 06:46:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0D3FF875B6
 for <devel@linuxdriverproject.org>; Wed, 22 Apr 2020 06:46:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hg+WcA+oRmO3 for <devel@linuxdriverproject.org>;
 Wed, 22 Apr 2020 06:46:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2DF68863CE
 for <devel@driverdev.osuosl.org>; Wed, 22 Apr 2020 06:46:33 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id o19so1373070qkk.5
 for <devel@driverdev.osuosl.org>; Tue, 21 Apr 2020 23:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=8gqABnAnLZgYN8lMYsAQdzFJAijN2oFh62UC2JZ1AQ8=;
 b=NRiSdPTLNOJT4XNhkmzmUrWqqV1aoaUIyVWUvZxRqDvI3r8sWjNU5qr4knnUmx/wQw
 OYk3VB8jLKKjXE4YJgswiv+LbbdEL1TUnk+2XBgn/LLAB+QKqPtNwtugF7BRHRplwdpT
 49qMAarLIzsQjFzmrPc065rI1RMaejcwvwnGDh2G7zGI2ExuVOCXZzfU671ml+2KgrIB
 BqEJ/i17AgjK2wo6iG75/v3GtwNBdpsFP29Ovatmwc4nfrHnlV8TUpbDMSjQoAi/EVgq
 kbvUWTwyVak3KSfGlh/HkFjm0JA2foA5faAYc43p9ozRth+YnjcYA0pnS1x0040mvYMc
 ZjXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=8gqABnAnLZgYN8lMYsAQdzFJAijN2oFh62UC2JZ1AQ8=;
 b=ibtdvYAwNIo35dsTJqYyLtasdXmgUEsv+PvipQK/8zNzp7J32fQ3ZoGlUOaT6Mk9Qe
 Uek4JwdPHU7kdu9Z1tdD3HhJxBDH5CbLGG/mQmMYQv5/KOF+73gcVQUb7KF2Tni5NMxc
 V4HFN7b32VfQOWZkn8Tp0K6P8bhdd+5nDPObmjXS6A5QPIUnfn1DG5WnzVGksmEbG7Ti
 7tGpJJXmmzhRBL0BHknEqO0RvZkIBtzOFMoLQxSMS3OSJ0B7x/AP+Nm9HIaXFrUZKA7i
 6pT2GYpb8nSkD/aj0oehJVV6SEtp0x8bWlSiceVdDQB+FoeWgc6K6M/6zEpbBT5mU1xj
 ZY4g==
X-Gm-Message-State: AGi0PuZidaZvBQNFsTYuBU16a5ouYKnIWRXb/uetgog3f4YMUVsE4M23
 0DtXmm3F9asf6QnBz6RnWZMOZouNWbU5xw5Hfuo=
X-Google-Smtp-Source: APiQypLppDbhrj6PXQzVTCBcexdICcsnMgUyDi6Du5WRgzI6B5eDOD/YZNj6HEoDIwzx8QY7Oefchr+eIOPG5bQHfWQ=
X-Received: by 2002:a37:7d81:: with SMTP id
 y123mr25293673qkc.102.1587537992171; 
 Tue, 21 Apr 2020 23:46:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ad4:4e6e:0:0:0:0:0 with HTTP; Tue, 21 Apr 2020 23:46:31
 -0700 (PDT)
From: Ambrose Cooker <islamnurulislam402@gmail.com>
Date: Tue, 21 Apr 2020 23:46:31 -0700
Message-ID: <CANFLDfH9kb9xjSnGddUL-eR=GYPAFHkKvP3PQR5h-P_6Deu2Bw@mail.gmail.com>
Subject: Greetings to you my Dear!
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
Reply-To: ambrosecooker389@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings My Dear Friend,

On behalf of friendship and love i need your urgent assistance in
transferring the sum of $10.5million immediately to your private
account. The money has been here in our Bank lying dormant for years
now without anybody coming for the claim of it.

I also need you to corporate with me for the release of this money
into your private bank account as the relative to our deceased
customer (the account owner) who died on 2016 terrorist attack at
Splendid Hotel Ouagadougou Burkina Faso,with her Wife.and i really
need you to stand as the NEXT OF KIN to this family.that is why i
contacted you and as soon as this money is been channel to your
account i will come over to meet you in  your country for the share of
the money and remember The money will be shared 60% for me and 40% for
you.

Check out the web; (https://www.bbc.com/news/world-africa-35332792)
for more understanding, I shall send you more information and the bank
details when I receive your positive response from you to follow
up,therefore contact me with my private email.

ambrosecooker389@gmail.com


Thanks with my best regards.
Mr.Ambrose Cooker.
Telex Manager
African Development Bank (ADB)
Burkina Faso.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
