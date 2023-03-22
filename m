Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7B96C455F
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Mar 2023 09:51:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44B4760E96;
	Wed, 22 Mar 2023 08:51:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44B4760E96
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Am0agkdhtOEZ; Wed, 22 Mar 2023 08:51:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 336B560D90;
	Wed, 22 Mar 2023 08:51:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 336B560D90
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 357491BF3A0
 for <devel@linuxdriverproject.org>; Wed, 22 Mar 2023 08:51:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1C95360E96
 for <devel@linuxdriverproject.org>; Wed, 22 Mar 2023 08:51:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C95360E96
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LrqNtY6VzcIK for <devel@linuxdriverproject.org>;
 Wed, 22 Mar 2023 08:51:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C7BB260D90
Received: from mail.odensebiz.pl (mail.odensebiz.pl [217.61.97.194])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C7BB260D90
 for <devel@driverdev.osuosl.org>; Wed, 22 Mar 2023 08:51:25 +0000 (UTC)
Received: by mail.odensebiz.pl (Postfix, from userid 1002)
 id 78EB68B990; Wed, 22 Mar 2023 09:49:24 +0100 (CET)
Received: by mail.odensebiz.pl for <devel@driverdev.osuosl.org>;
 Wed, 22 Mar 2023 08:45:58 GMT
Message-ID: <20230322084502-0.1.1h.56kv.0.bp7aob6nqg@odensebiz.pl>
Date: Wed, 22 Mar 2023 08:45:58 GMT
From: "Mateusz Suchocki" <mateusz.suchocki@odensebiz.pl>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?Nawi=C4=85zanie_wsp=C3=B3=C5=82pracy?=
X-Mailer: mail.odensebiz.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=odensebiz.pl; s=mail; 
 t=1679474966; bh=vfunix/zLj1icehG1l06EUpqhzKH5U21bbiVAw5QnaQ=;
 h=Date:From:To:Subject:From;
 b=rKWtGWtfWBP5ekFXw7BV5xoOUKti3xAkJktlfhX+J8xkK2YoGzQO1BuqgE/Jvzl0I
 L9CNjCPfbDNZhloSbX6PMsX5an/jVaZzQD8lMussrUIeqmDUi0XpUK0ZYeNIsTqAbO
 924XyUvidw9A5ZkFXAhUa8wyaowRQPTiPprCjEQwFMqESCmUjeSUnBUUk1dTlL9YlR
 izYGjoixkyUNxYztilOukcAEBRB2Y61LKz+O3Fx6dRxxYeR4UGuj2SbmzxCYQq4JuH
 qbyOj/m++oGDtDNlJW3vRA+Uu9KOjHdnb4miNXTbRGRtx+tpZnoZURVSoNCt/4E8Zo
 vrbITsmZD9vuw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=odensebiz.pl header.i=@odensebiz.pl
 header.a=rsa-sha256 header.s=mail header.b=rKWtGWtf
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

U3phbm93bmkgUGHFhHN0d28sCgpGaXJtYSwga3TDs3LEhSBtYW0gcHJ6eWplbW5vxZvEhyByZXBy
ZXplbnRvd2HEhyBvZCA4IGxhdCB6YWptdWplIHNpxJkgd3NwYXJjaWVtIGR6aWHFgmHFhCBzcHJ6
ZWRhxbxvd3ljaC4gT3BlcnVqZW15IG5hIHN0eWt1IG1hcmtldGluZ3UgaSBzcHJ6ZWRhxbx5IGlu
aWNqdWrEhWMga29udGFrdCB6IHd5YnJhbsSFIHByemV6IHBhcnRuZXJhIGdydXDEhSBkb2NlbG93
xIUsIGFieSBwcnpla2F6YcSHIGRvIG9ic8WCdWdpIHNwcnplZGHFvG93ZWogZmlybXkgemFpbnRl
cmVzb3dhbmUgZGFsc3p5bWkgcm96bW93YW1pLCBwcmV6ZW50YWNqxIUgaSBvZmVydMSFLgoKS2HF
vGR5IHogd3lwcmFjb3dhbnljaCBrb250YWt0w7N3IHN0YWplIHNpxJkgbGVhZGVtIGRvcGllcm8g
cG8gd2VyeWZpa2FjamkgamVnbyBwb3RlbmNqYcWCdSBwcnpleiB6ZXNww7PFgiBzcHJ6ZWRhxbxv
d3kgbmFzemVnbyBwYXJ0bmVyYS4gU3ViaWVrdHl3bmEgb2NlbmEgcG90ZW5jamHFgnUgbmEgd3Nw
w7PFgnByYWPEmSBqZXN0IHBvZHN0YXfEhSBrd2FsaWZpa2FjamkgbGVhZGEuCgpKZcWbbGkgdyBj
aHdpbGkgb2JlY25laiBzdGF3aWFjaWUgUGHFhHN0d28gbmEgYWt0eXduZSBwb3N6dWtpd2FuaWUg
a2xpZW50YSB6IG1pxYLEhSBjaMSZY2nEhSBwb2R6aWVsxJkgc2nEmSB3acSZa3N6xIUgaWxvxZtj
acSFIHN6Y3plZ8OzxYLDs3cuCgoKUG96ZHJhd2lhbSBzZXJkZWN6bmllCk1hdGV1c3ogU3VjaG9j
a2kKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
