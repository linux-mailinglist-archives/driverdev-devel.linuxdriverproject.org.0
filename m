Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7F17D066D
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Oct 2023 04:23:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 218694051C;
	Fri, 20 Oct 2023 02:23:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 218694051C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b47YUQrZDWG0; Fri, 20 Oct 2023 02:23:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BFA40405E0;
	Fri, 20 Oct 2023 02:23:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BFA40405E0
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 40EF31BF2CB
 for <devel@linuxdriverproject.org>; Fri, 20 Oct 2023 02:23:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 19D444B59B
 for <devel@linuxdriverproject.org>; Fri, 20 Oct 2023 02:23:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19D444B59B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X6VEyYcnVIXd for <devel@linuxdriverproject.org>;
 Fri, 20 Oct 2023 02:23:39 +0000 (UTC)
X-Greylist: delayed 172321 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 20 Oct 2023 02:23:38 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C3EC4B56C
Received: from gigared.com.ar (saga.gigared.com.ar [190.57.228.68])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C3EC4B56C
 for <devel@driverdev.osuosl.org>; Fri, 20 Oct 2023 02:23:37 +0000 (UTC)
Received: from maskedhost [127.0.0.1] by example.com stage1 with esmtps 
 (Exim MailCleaner) id 1qs9Sc-000R9M-35  
 from <eojeda@gigared.com.ar>; Sun, 15 Oct 2023 19:19:46 -0300
Received: from mail.gigared.com.ar (localhost [127.0.0.1])
 by mail.gigared.com.ar (Postfix) with ESMTPS id A4BE55E72AED9;
 Sun, 15 Oct 2023 19:14:03 -0300 (-03)
Received: from mail.gigared.com.ar (localhost [127.0.0.1])
 by mail.gigared.com.ar (Postfix) with ESMTPS id 78B905E72AEC8;
 Sun, 15 Oct 2023 19:14:03 -0300 (-03)
Received: from mail.gigared.com.ar (mail.gigared.com.ar [192.168.252.233])
 by mail.gigared.com.ar (Postfix) with ESMTP id 315D35E72AEC4;
 Sun, 15 Oct 2023 19:13:57 -0300 (-03)
X-MailCleaner-SPF: pass
Date: Sun, 15 Oct 2023 19:13:57 -0300 (ART)
From: Infos <eojeda@gigared.com.ar>
Message-ID: <620443557.12201422.1697408037146.JavaMail.zimbra@gigared.com.ar>
Subject: Infos Oktober 2023
MIME-Version: 1.0
X-Originating-IP: [156.0.251.40]
X-Mailer: Zimbra 8.8.15_GA_4562 (zclient/8.8.15_GA_4562)
Thread-Index: NNmW4xiOP2P34hFchDG/9vShLjfH5A==
Thread-Topic: Infos Oktober 2023
X-MailCleaner-TrustedIPs: Ok
X-MailCleaner-TLS-Client-Certificate: none
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=gigared.com.ar; s=dkim; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Subject:Message-ID:Reply-To:From:Date:Sender:To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+AKy/BBrYAlSJQT3+oOpU9EK6U1mY8v1ufpp66llMzU=; b=GB9SLgQZnxf/v8pv7a7LMLRMSc
 BuzxLf+nq1cdydPz4bUvZJ5B8wanQ468taLF3eSErAMmyYHz8UkThmgSisWGN2QG2Kjgvba4QKlJG
 w/lQGwym2qBF2gnaqMCGaKsH6UsPIKvv/Me2HHysNVG4HuYVl0ugj6ijiOsu6MNKn9jM=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=gigared.com.ar header.i=@gigared.com.ar
 header.a=rsa-sha256 header.s=dkim header.b=GB9SLgQZ
X-Mailman-Original-Authentication-Results: localhost;
 iprev=pass (smtp.gigared.com.ar) smtp.remote-ip=190.7.31.233;
 spf=pass smtp.mailfrom=gigared.com.ar;
 dmarc=pass header.from=gigared.com.ar
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
Reply-To: Infos <quartbvba@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGFsbG8gSGVyci9GcmF1LAoKCldpciBoYWJlbiBuaWNodCBkaWUgQWJzaWNodCwgSWhyZSBaZWl0
IHp1IHZlcnNjaHdlbmRlbi4KCgpXaXIgdmVyZ2ViZW4gS3JlZGl0ZSBhbiBQcml2YXRwZXJzb25l
biB1bmQgVW50ZXJuZWhtZW4uIERlciBaaW5zc2F0eiBiZXRyw6RndCAyICUgasOkaHJsaWNoLiBX
aXIgaGFiZW4gZGllIEthcGF6aXTDpHQsIFByb2pla3RlIGluIGRpZXNlbiBCZXJlaWNoZW4genUg
ZmluYW56aWVyZW47IEltbW9iaWxpZW5lbnR3aWNrbHVuZywgQmF1d2VzZW4sIEJlcmdiYXUsIMOW
bCB1bmQgR2FzLCBGbHVnZ2VzZWxsc2NoYWZ0IHVuZCB2ZXJzY2hpZWRlbmUgSGFuZGVsc2FrdGl2
aXTDpHRlbi4gQmVpIEludGVyZXNzZSBnZWJlbiBTaWUgYml0dGUgRm9sZ2VuZGVzIGFuOgoKCjEt
IFZvbGxzdMOkbmRpZ2VyIE5hbWU6CjItIEVyZm9yZGVybGljaGVyIEtyZWRpdGJldHJhZzoKMy0g
QW1vcnRpc2F0aW9uc2RhdWVyICgxIOKAkyAzMCBKYWhyZSk6CjQtIFRlbGVmb25udW1tZXI6CjUt
IFdoYXRzQXBwLU51bW1lcjoKCgpTb2JhbGQgaWNoIGRpZSBvYmVuIGdlbmFubnRlbiBJbmZvcm1h
dGlvbmVuIGVyaGFsdGVuIGhhYmUsIHNlbmRlIGljaCBJaG5lbiBkaWUgS3JlZGl0YmVkaW5ndW5n
ZW4genUuCgoKSWhyIFLDvGNrZXJzdGF0dHVuZ3NwbGFuIGJlZ2lubnQgbmFjaCA2IE1vbmF0ZW4g
KDYtbW9uYXRpZ2UgS3VsYW56ZnJpc3QpLgoKCkRpZSBGaW5hbnppZXJ1bmcgZGF1ZXJ0IGV0d2Eg
NyBCYW5rYXJiZWl0c3RhZ2UgYWIgZGVtIFRhZywgYW4gZGVtIFNpZSBJaHJlbiBLcmVkaXRhbnRy
YWcgZWlucmVpY2hlbi4KCgpBbnR3b3J0ZW4gU2llIHVucyBmw7xyIHdlaXRlcmUgSW5mb3JtYXRp
b25lbi4KCgpNaXQgZnJldW5kbGljaGVuIEdyw7zDn2VuCgpVd2UgV2FubmVyCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApk
ZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJw
cm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
