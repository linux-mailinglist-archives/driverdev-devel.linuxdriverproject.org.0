Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E204908EA0
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2024 17:24:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8CC7C4024D;
	Fri, 14 Jun 2024 15:24:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FpWYUSFK5IeK; Fri, 14 Jun 2024 15:24:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 63692404B2
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 63692404B2;
	Fri, 14 Jun 2024 15:24:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F34F41BF328
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2024 15:24:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E905C413B8
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2024 15:24:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X5wiNhQ31sUS for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2024 15:24:45 +0000 (UTC)
X-Greylist: delayed 10936 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 14 Jun 2024 15:24:44 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CB5E94061A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB5E94061A
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=85.214.89.162;
 helo=top-pension.com; envelope-from=www-data@h1937686.stratoserver.net;
 receiver=<UNKNOWN> 
Received: from top-pension.com (top-pension.com [85.214.89.162])
 by smtp4.osuosl.org (Postfix) with ESMTP id CB5E94061A
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2024 15:24:44 +0000 (UTC)
Received: by top-pension.com (Postfix, from userid 33)
 id 22BD0622443; Fri, 14 Jun 2024 13:44:40 +0200 (CEST)
Date: Fri, 14 Jun 2024 13:44:40 +0200
To: devel@driverdev.osuosl.org
From: =?UTF-8?Q?ALI_IMRAM?= <nonso4447@gmail.com>
Subject: =?UTF-8?Q?=26=23=36=30=34=37=3b=26=23=36=30=37=36=3b=26=23=36=30=34=30=3b=26=23=36=30=33=38=3b=26=23=36=30=37=31=3b=26=23=36=30=33=35=3b=26=23=36=30=37=31=3b=26=23=36=30=33=31=3b=26=23=36=30=39=38=3b=26=23=36=30=34=31=3b=26=23=36=30=34=30=3b=26=23=36=30=37=38=3b=26=23=36=30=34=33=3b=26=23=36=30=33=32=3b=26=23=36=30=37=30=3b=26=23=36=30=33=31=3b=26=23=36=30=37=38=3b=26=23=36=30=35=30=3b=26=23=36=30=39=38=3b=26=23=36=30=33=35=3b=26=23=36=30=31=36=3b=26=23=36=30=33=36=3b=26=23=36=30=37=30=3b=26=23=36=30=33=35=3b=26=23=36=30=33=33=3b=26=23=36=30=33=33=3b=26=23=36=30=37=37=3b=26=23=36=30=34=33=3b=26=23=36=30=34=37=3b=26=23=36=30=37=30=3b=26=23=36=30=34=32=3b=26=23=36=30=32=36=3b=26=23=36=30=38=36=3b=26=23=36=30=33=36=3b=26=23=36=30=37=36=3b=26=23=36=30=32=30=3b=26=23=36=30=34=32=3b=26=23=36=30=33=36=3b=26=23=36=30=34=37=3b=26=23=36=30=39=31=3b=26=23=36=30=31=37=3b=26=23=36=30=39=38=3b=26=23=36=30=32=35=3b=26=23=36=30=37=35=3b=26=23=36=30=38=36=3b=26=23=36=30=33=33=3b=26=2
 3=36=30=38=35=3b=26=23=36=30=31=36=3b=26=23=36=30=37=30=3b=26=23=36=30=33=35=3b=26=23=36=30=39=31=3b=26=23=36=30=35=30=3b=26=23=36=30=39=38=3b=26=23=36=30=33=35=3b=26=23=36=30=31=36=3b=26=23=36=30=32=36=3b=26=23=36=30=38=32=3b=26=23=36=30=34=32=3b=26=23=36=30=36=30=3b=26=23=36=30=33=33=3b=26=23=36=30=38=31=3b_=26=23=36=30=33=36=3b=26=23=36=30=39=38=3b=26=23=36=30=34=32=3b=26=23=36=30=34=37=3b=26=23=36=30=37=31=3b=26=23=36=30=33=35=3b=26=23=36=30=33=36=3b=26=23=36=30=37=38=3b=26=23=36=30=33=36=3b=26=23=36=30=37=30=3b=26=23=36=30=33=33=3b=2f=26=23=36=30=32=31=3b=26=23=36=30=37=30=3b=26=23=36=30=34=37=3b_=26=23=36=30=32=31=3b=26=23=36=30=37=36=3b=26=23=36=30=34=32=3b=26=23=36=30=33=31=3b=26=23=36=30=39=38=3b=26=23=36=30=34=32=3b=26=23=36=30=34=33=3b=26=23=36=30=33=36=3b=26=23=36=30=39=31=3b=26=23=36=30=34=30=3b=26=23=36=30=31=36=3b=26=23=36=30=31=37=3b=26=23=36=30=39=38=3b=26=23=36=30=32=35=3b=26=23=36=30=37=35=3b=26=23=36=30=38=36=3b=26=23=36=30=34=34=3b=26=23=36=30=37=31=3b=2
 6=23=36=30=32=35=3b?=
Message-ID: <3d80f02bea9dfaeeecd8a180f2c8cbb7@www.top-pension.com>
X-Priority: 3
MIME-Version: 1.0
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=fail (p=none dis=none)
 header.from=gmail.com
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

&#6023;&#6086;&#6042;&#6070;&#6036;&#6047;&#6077;&#6042;&#6050;&#6098;&#6035;&#6016;,

&#6047;&#6076;&#6040; Ali Imran &#6018;&#6074;&#6023;&#6070;&#6024;&#6098;&#6040;&#6084;&#6087; UAE &#6042;&#6036;&#6047;&#6091;&#6017;&#6098;&#6025;&#6075;&#6086;&#6100; &#6017;&#6098;&#6025;&#6075;&#6086;&#8203;&#6021;&#6020;&#6091;&#8203;&#6036;&#6025;&#6098;&#6023;&#6070;&#6016;&#6091;&#8203;&#6032;&#6070;&#8203;&#6031;&#6078;&#8203;&#6018;&#6070;&#6031;&#6091;&#8203;&#6036;&#6070;&#6035;&#8203;&#6033;&#6033;&#6077;&#6043;&#8203;&#6047;&#6070;&#6042;&#8203;&#6026;&#6086;&#6036;&#6076;&#6020;&#8203;&#6042;&#6036;&#6047;&#6091;&#8203;&#6017;&#6098;&#6025;&#6075;&#6086;&#8203;&#6060;&#8203;&#6050;&#6031;&#6091; &#6038;&#6098;&#6042;&#6084;&#6087;&#8203;&#6017;&#6098;&#6025;&#6075;&#6086;&#8203;&#6036;&#6070;&#6035;&#8203;&#6042;&#6020;&#6091;&#6021;&#6070;&#6086;&#8203;&#6016;&#6070;&#6042;&#8203;&#6022;&#6098;&#6043;&#6078;&#6041;&#8203;&#6031;&#6036;&#8203;&#6042;&#6036;&#6047;&#6091;&#8203;&#6018;&#6070;&#6031;&#6091;&#8203;&#6031;&#6070;&#6086;&#6020;&#8203;&#6038;&#6072;&#8203;
 &#6038;&#6081;&#6043;&#8203;&#6035;&#6084;&#6087;&#8203;&#6040;&#6016;&#6100;

&#6017;&#6098;&#6025;&#6075;&#6086;&#6040;&#6071;&#6035;&#6026;&#6073;&#6020;&#6032;&#6070;&#6031;&#6078;&#6050;&#6098;&#6035;&#6016;&#6035;&#6085;&#6031;&#6082;&#6036;&#6098;&#6042;&#6078;&#6050;&#6070;&#6047;&#6041;&#6026;&#6098;&#6027;&#6070;&#6035;&#6050;&#6090;&#6072;&#6040;&#6082;&#6043;&#6026;&#6026;&#6082;&#6043;&#6100; &#6047;&#6076;&#6040;&#6033;&#6070;&#6016;&#6091;&#6033;&#6020;&#6040;&#6016;&#6017;&#6098;&#6025;&#6075;&#6086;&#6031;&#6070;&#6040;&#6050;&#6070;&#6047;&#6096;&#6041;&#6026;&#6098;&#6027;&#6070;&#6035;&#6050;&#6090;&#6072;&#6040;&#6082;&#6043;&#6063;&#6016;&#6023;&#6035;&#6042;&#6036;&#6047;&#6091;&#6017;&#6098;&#6025;&#6075;&#6086;&#6035;&#6085;&#6033;&#6072;&#6035;&#6081;&#6087; (ali888imrann@gmail.com)&#6100;

&#6047;&#6076;&#6040;&#6050;&#6042;&#6018;&#6075;&#6030;
&#6050;&#6070;&#6043;&#6072; &#6050;&#6090;&#6072;&#6040;&#6042;&#6089;&#6070;&#6035;&#6100;
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
