Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A96471586
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Dec 2021 20:08:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7563685999;
	Sat, 11 Dec 2021 19:08:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aSaA4A7XJtLC; Sat, 11 Dec 2021 19:08:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D943F850E4;
	Sat, 11 Dec 2021 19:08:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 003271BF414
 for <devel@linuxdriverproject.org>; Sat, 11 Dec 2021 19:07:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E1E22850E4
 for <devel@linuxdriverproject.org>; Sat, 11 Dec 2021 19:07:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HWuk3Ct65puj for <devel@linuxdriverproject.org>;
 Sat, 11 Dec 2021 19:07:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com
 [IPv6:2607:f8b0:4864:20::735])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C2F9885174
 for <devel@linuxdriverproject.org>; Sat, 11 Dec 2021 19:07:56 +0000 (UTC)
Received: by mail-qk1-x735.google.com with SMTP id de30so10820986qkb.0
 for <devel@linuxdriverproject.org>; Sat, 11 Dec 2021 11:07:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=umgieS+Nw6GLA/hiifGYYeBCDTcWFf2bVe/adPBYYdE=;
 b=q4R67cNKpL1rm0aYhnLTy5isHroZSsRbjKwF15/m32Aa41hOJlaiPm/lQ4zHiNn+4G
 Unhuij5N/D8zFWnKyCZ3ZeU94FlUDZ6jM/M8/3KCGtfqJNhTQ0R4jvDOYZcQWIWfOzn6
 GZZIgnJWiviYuVxqbSZgZ+DG4my0MFr2UygbKTGKzyyG6grq3s93KoSsbXln+NKAhhyT
 1/cquB6NKBo0gzwhyAK09wQJWAWbE9OQbeAkCaV99gRGiBqOyOLW4Jb+GhnS5w/d5mj/
 qpHE/oWdnOiE67mcfLoeP+hFVCmi5yBggkxPQOdkkXyU9aB7/gZaE1QTSO031d4lnq+e
 LVrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=umgieS+Nw6GLA/hiifGYYeBCDTcWFf2bVe/adPBYYdE=;
 b=lG7kJbv4l8Wm0xHRTe4nqGQNYbGzTqksdN7a9jPWFSjHq6t9tplNKyloglCZyNvkcE
 xnoEJutJTpRMOjep1ZooSWDO6YT/gZcB9+gLiDw6jiCyHEFW+p2TXN7P3S2BHknvsQ41
 k4qgAVbDVdvpMElB145ZDhQKSiSnBQIt3qcFLShiDQw3+2ZSN6bDK+1KOJVd3hix3MWx
 sBEy8BwFL1orwGOsW5AjHBkord90fyb5cbbbFC433A7gOAetXrS4pmgxcfJL7h/t3YPU
 XBA7g1njy96BWwbR6prAhYUyy44AN23lOM+0U+g0EZ83ZZzay3ZlslTaXlka63HcIjvY
 j56g==
X-Gm-Message-State: AOAM533y653PmLFqVpi8OtJX5FotUku2Cpipe6qg6y8eIFpCZNMcrDbD
 pftIKgBkw+D5NGyhtjtJ1CTCloqzYnR5h/ZvQME=
X-Google-Smtp-Source: ABdhPJzIawUU11PybXLavry7oqmf0HssxKBkN40tA3a2i5PgMLkAPvgWUshs497Gh7gBAv0cn+hHOlzbhc55e2zw08A=
X-Received: by 2002:a05:620a:29d5:: with SMTP id
 s21mr25778337qkp.169.1639249675481; 
 Sat, 11 Dec 2021 11:07:55 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac8:5f4d:0:b0:2b2:f26b:1ca4 with HTTP; Sat, 11 Dec 2021
 11:07:55 -0800 (PST)
From: Martina Francis <martinafrancis655@gmail.com>
Date: Sat, 11 Dec 2021 11:07:55 -0800
X-Google-Sender-Auth: dBbIUn0tg4akH8dBRXOPq0dOXOk
Message-ID: <CAKS56D5-c6Qvt_KSRR04rbzoZhRcO9A-aMq-trs23GGxwR=ptg@mail.gmail.com>
Subject: Bom Dia meu querido
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
Reply-To: martinafrancis022@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkJvbSBEaWEgbWV1IHF1ZXJpZG8sCkNvbW8gdm9jw6ogZXN0w6EgZSBzdWEgZmFtw61saWEu
Ck1ldSBub21lIMOpIFNyYS4gTWFydGluYSBGcmFuY2lzLCB1bWEgbXVsaGVyIGRvZW50ZSBlc2Ny
ZXZlbmRvIGRlIHVtYQpjYW1hIGRlIGhvc3BpdGFsIGRldmlkbyBhbyBjw6JuY2VyIHBlcmlnb3Nv
IGUgw6AgZG9lbsOnYSBkZXJyYW1lIHF1ZSBtZQphdGFjb3UuIEV1IHF1ZXJvIGRvYXIgJCAyLjcw
MC4wMDAsMDAgTUlMSMOVRVMgZGUgZMOzbGFyZXMgcGFyYSBhanVkYXIgb3MKcG9icmVzLCBjcmlh
bsOnYXMgYWJ1c2FkYXMsIG1lbm9zIHByaXZpbGVnaWFkb3MsIGlncmVqYXMsIG9yZmFuYXRvcyBl
CnZpw7p2YXMgc29mcmVkb3JhcyBuYSBzb2NpZWRhZGUuCgpQb3IgZmF2b3IsIHZvbHRlIHBhcmEg
bWltIGltZWRpYXRhbWVudGUgYXDDs3MgbGVyIGVzdGEgbWVuc2FnZW0gcGFyYQpvYnRlciBtYWlz
IGRldGFsaGVzIHNvYnJlIGVzdGEgYWdlbmRhIGh1bWFuaXTDoXJpYS4KCkRldXMgdGUgYWJlbsOn
b2UgZW5xdWFudG8gZXNwZXJvIHN1YSByZXNwb3N0YS4KCgpTcmEuIE1hcnRpbmEgRnJhbmNpcy4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
