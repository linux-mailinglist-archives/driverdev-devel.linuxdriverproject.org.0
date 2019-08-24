Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEE39BD0C
	for <lists+driverdev-devel@lfdr.de>; Sat, 24 Aug 2019 12:36:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD53187B62;
	Sat, 24 Aug 2019 10:36:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KYYqEKxxYvAj; Sat, 24 Aug 2019 10:36:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C6C58731A;
	Sat, 24 Aug 2019 10:36:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A63E81BF377
 for <devel@linuxdriverproject.org>; Sat, 24 Aug 2019 10:36:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A1C1587C4E
 for <devel@linuxdriverproject.org>; Sat, 24 Aug 2019 10:36:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Iuvzj1Lqa4ir for <devel@linuxdriverproject.org>;
 Sat, 24 Aug 2019 10:36:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AFB738684A
 for <devel@driverdev.osuosl.org>; Sat, 24 Aug 2019 10:36:37 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id t50so17892860edd.2
 for <devel@driverdev.osuosl.org>; Sat, 24 Aug 2019 03:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=a9ht+UaqS4tL4Hgfgv0l2YlLAqzHINYe3nr1cnPKoRE=;
 b=oOB7xhQmIi1MWlR82fy7tgNC4giTQ2WHN8g89cKosxT2VPBOoNPMaM2f9us/IOyxAD
 Kb+5OV1zy0LxD/9Tlh7deYXbaYI/bOLT+j+/SyzsqS7cvo5zl8EChK9dNGXdmEYj0vhL
 68Lt+DEeV6N4J24v/Z3KmlTQPu3nc3mt4dqW2tuYqZ0RgCHVw8Yu1cPkw2BOhkHeFSwq
 nrK5sYm466vOCyAM/U8pXlwGQnmzamxm0jCK4mAXTnNjOP8QlHa6hUUn2C9Ceq4KtIEd
 hgzN4BA5srK2u/E7hOacM034yyns4sbou9qSQU0VI2ZvDwJEeq8tOq/khA06DDtpJIGB
 v2jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=a9ht+UaqS4tL4Hgfgv0l2YlLAqzHINYe3nr1cnPKoRE=;
 b=JPTTLb7ns/+EmCyFXcxzff27WDgmqoS1Th7Y30ck6gda7SE8BiOCe2ZwYIWo95lzPy
 rnrlnAIOSvlELVJeEGtHPBkVHRPsyNi068dyJlq7Mqoq/0V7fFiffGJw4EQFpxBp5KmZ
 ev524U02FDbJfRmio4p4rIwaefcRq2WMc9O6oa/naaSCoLj4U0uxOW7Rvnj1BThZlMfO
 FKFo3wVPspOl2/ac/6tju8/BvRlKeVen1uxOab5vZYTFkFaw2Zd3t5ShcFuLWlVHH5YS
 AtHjQgnAFZ0Vs31YR01ItF26xikv0837ctv4G0l2dF92gkdwPWCv/eNvkzMbVknPGblw
 /F8g==
X-Gm-Message-State: APjAAAXP8mMObcqpXEyZJGjx2q3vfwcWTFNtG6FLPCgeGz6xX3TGF4lT
 DAUWTzNaVTQJnpxXQMMpbjlSfwTj92FUQcCAC/bNHeU=
X-Google-Smtp-Source: APXvYqxv9ItFQC/78SoDuAz+Wx430WQRibTa2ttQD0FReBrcdoxDU0zSYLGLHAvbyA/kKB4FjKYgVGuCU+KaDdytt1g=
X-Received: by 2002:a17:906:2111:: with SMTP id
 17mr7977818ejt.75.1566642996110; 
 Sat, 24 Aug 2019 03:36:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6402:396:0:0:0:0 with HTTP; Sat, 24 Aug 2019 03:36:35
 -0700 (PDT)
From: NNPC GROUP <infonnpcgroup04@gmail.com>
Date: Sat, 24 Aug 2019 03:36:35 -0700
Message-ID: <CAL4t93C19uOdn-tLat27E34GM6bmZ9GysWwDqqad2hBofxJP8Q@mail.gmail.com>
Subject: NNPC GMD , Request for Urgent Business Transaction
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
Reply-To: nnpc.gmdoffice2015@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Sir

This letter might come to you  as a surprise especially since we have
never met or discuss before. Basically, the message might sound
strange but it is factual in reality . The truth is that I should have
notified you first through a more confidential means, (even if it's at
least to respect your integrity) please accept my humble apologies if
I had caught you unawares, I frankly do not mean any harm in passing
my message.,I am the Group Managing Director of Nigerian National
Petroleum Corporation (NNPC) also a members of the Special Committee
for Budget and Planning of the Ministry of Petroleum and Mineral
Resources. This committee is principally concerned with contract
appraisal and the approval of contract in order of priorities as
regards capital projects of the federal executive government of
Nigeria, with my positions as the NNPC GMD, I have successfully
secured  the sum of Seventy  million five hundred thousand dollars
(US$70.5M) this amount was accumulated from the over invoice of
contract fund executed in past government  administration . Hence,
together with some of the top officials of the Nigerian National
Petroleum Corporation and the Federal Ministry of
Finance
 I have plan to transfer this amount of money Seventy  million five
hundred thousand dollars (US$70.5M) into an overseas account by
awarding a non existing contract from my ministry (NNPC). To this
effect I decided to contact you and ask for your assistance. What I
need from you sir, is to provide a very vital account in which the
funds will be transferred.  I have agreed to compensate  you as the
owner of the account used for this transaction with 25% of the total
amount remitted. I have tenaciously, diligently, conscientiously and
studiously worked out the modalities and logistics,  to ensure
hitch-free  successful actualization of the fund. I hereby spur and
implore you to be in tandem with the pace.Tempo already in place.
Note with my position and within the confines of  legal requirements,
I will be solemnly responsible for re-verifying/re-validating all the
mutilated and battered documents related to this matter with the view
of bringing it up to date. Note every important/necessary documents to
back up this funds as in line
with the G8 United Nations and European Unions/Communities stipulated
financial regulations on  contract payment involving huge amount of
this magnitude will be  provided by me over here, viz Anti-Terrorist
Clearance Certificate,  Drug Free Clearance Certificate and Funds
Ownership clearance Certificate. Certified, Ratified and Verified
Documents. This  arrangement is Cinch and Unalloyed. Result Oriented,
Hinged for only 4  days operation and not time wasting, On a very
serious note, This is  the only device you  can embrace firmly to
ensure you taste from the contract fund.

Finally , You are to furnish me  with your bank coordinate together
with your postal address and any working identity  that displays your
photograph as this will enable me commence on immediate transfer
processing of funds transfer  to your bank account

Regards

Dr. Maikanti Baru
NNPC Group Managing Director
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
