Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9CAAC3FC
	for <lists+driverdev-devel@lfdr.de>; Sat,  7 Sep 2019 03:50:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4A83587E3C;
	Sat,  7 Sep 2019 01:50:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id akyeQh+HUBB0; Sat,  7 Sep 2019 01:50:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5B96D87E0B;
	Sat,  7 Sep 2019 01:50:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AEB101BF330
 for <devel@linuxdriverproject.org>; Sat,  7 Sep 2019 01:50:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ABAC4882F8
 for <devel@linuxdriverproject.org>; Sat,  7 Sep 2019 01:50:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 99P24w1n5xB1 for <devel@linuxdriverproject.org>;
 Sat,  7 Sep 2019 01:50:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-gateway-0902.c09.cynet (c9outbound210.ctmail.com
 [216.163.188.210])
 by hemlock.osuosl.org (Postfix) with ESMTP id 31B5A87F81
 for <devel@linuxdriverproject.org>; Sat,  7 Sep 2019 01:50:09 +0000 (UTC)
Received: from mail2world-inbound-0912.c09.cynet (unknown [10.9.37.12])
 by mail-gateway-0902.c09.cynet (Postfix) with ESMTP id BB1A6702F662A
 for <devel@linuxdriverproject.org>; Fri,  6 Sep 2019 18:50:00 -0700 (PDT)
Received: from exim by mail2world-inbound-0912.c09.cynet with local (Exim 4.92)
 id 1i6PrU-000C5L-Nl
 for devel@linuxdriverproject.org; Sat, 07 Sep 2019 01:50:00 +0000
X-Failed-Recipients: 31365474@qq.com
Auto-Submitted: auto-replied
From: Mail Delivery System <Mailer-Daemon@mail2world-inbound-0912.c09.cynet>
To: devel@linuxdriverproject.org
MIME-Version: 1.0
Subject: Mail delivery failed
  : returning message to sender
X-opentraffic-bounce: yes
Message-Id: <E1i6PrU-000C5L-Nl@mail2world-inbound-0912.c09.cynet>
Date: Sat, 07 Sep 2019 01:50:00 +0000
X-CTASD-RefID: str=0001.0A09020A.5D730CCB.005D, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=256
X-CTASD-IP: 10.9.37.12
X-CTASD-Sender: Mailer-Daemon@mail2world-inbound-0912.c09.cynet
x-ctasd: uncategorized
x-ctasd-vod: uncategorized
x-ctasd-station: 
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
Content-Type: multipart/mixed; boundary="===============2211617161942350871=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============2211617161942350871==
Content-Type: multipart/report; report-type=delivery-status; boundary=1567821000-eximdsn-1479575525

--1567821000-eximdsn-1479575525
Content-type: text/plain; charset=us-ascii

This message was created automatically by mail delivery software.

A message that you sent could not be delivered to all of its recipients.
This is a permanent error. The following address(es) failed:

  31365474@qq.com
    host m2w-in1.ctmail.com [209.67.128.24]
    SMTP error from remote mail server after RCPT TO:<31365474@qq.com>:
    501 This system is not configured to relay mail to <31365474@qq.com> for 216.163.188.208

--1567821000-eximdsn-1479575525
Content-type: message/delivery-status

Reporting-MTA: dns; mail2world-inbound-0912.c09.cynet

Action: failed
Final-Recipient: rfc822;31365474@qq.com
Status: 5.0.0
Remote-MTA: dns; m2w-in1.ctmail.com
Diagnostic-Code: smtp; 501 This system is not configured to relay mail to <31365474@qq.com> for 216.163.188.208

--1567821000-eximdsn-1479575525
Content-type: message/rfc822

Return-path: <devel@linuxdriverproject.org>
Received: from [218.87.53.130] (port=64073 helo=vdpu)
	by mail2world-inbound-0912.c09.cynet with smtp (Exim 4.92)
	(envelope-from <devel@linuxdriverproject.org>)
	id 1i6PrU-000C4Z-CB
	for 31365474@qq.com; Sat, 07 Sep 2019 01:50:00 +0000
Mime-Version: 1.0
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: 7bit
SUBJECT: test
TO: 31365474@qq.com
FROM: devel@linuxdriverproject.org
X-CTCH-Spam: Unknown
X-CTCH-VOD: Unknown
X-CTCH-Flags: 0
X-CTCH-RefID: str=0001.0A090202.5D730CC8.002B,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTASD-IP: 218.87.53.130
X-CTASD-Sender: devel@linuxdriverproject.org
X-SMP-SenderIP: open=218.87.53.130,hash=KWGuy717QlJRYTCyKE6OgQ==
X-SMP-Subject: open=test,hash=CY9rzUYh03PK3k6DJie09g==
X-SMP-Domain: open=linuxdriverproject.org,hash=qQsDay/wWKu6lf6mvJnaeA==
X-SMP-From: open=devel@linuxdriverproject.org,hash=axVRQBbYSeXTtPwSuUIAEg==
X-SMP-Rfc822Rules: R_652294,R_668993,DBB_65838,R_DBB_XHBH23,R_DBB_XHBH24
X-SMP-TxtHtmlRules: R_620513,R_640434,R_661792,R_617743,R_649587,R_677701,R_628391,R_634493,R_628891,R_635740,R_629599,R_676468,R_644065,R_676920,R_608219
X-SMP-FinalRule: 
X-SMP-RuleTag: rfc822=R_652294;R_668993;DBB_65838;R_DBB_XHBH23;R_DBB_XHBH24,txthtml=R_620513;R_640434;R_661792;R_617743;R_649587;R_677701;R_628391;R_634493;R_628891;R_635740;R_629599;R_676468;R_644065;R_676920;R_608219,fixed-rfc822=,fixed-txthtml=F_41975943;F_42289494;F_41975942;F_12850734,compound-before=,eval-rfc822=E_1625;E_1654;E_1658;E_1677;E_1679;E_647;E_650,eval=E_1638;E_1647,eval-url=
X-SMP-END: 

test

--1567821000-eximdsn-1479575525--

--===============2211617161942350871==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2211617161942350871==--
