Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A99124AB8
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Dec 2019 16:09:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 06E042048E;
	Wed, 18 Dec 2019 15:09:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id patdYMQFludc; Wed, 18 Dec 2019 15:09:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7A36720513;
	Wed, 18 Dec 2019 15:09:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A376F1BF4E4
 for <devel@linuxdriverproject.org>; Wed, 18 Dec 2019 15:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9D85E86190
 for <devel@linuxdriverproject.org>; Wed, 18 Dec 2019 15:09:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H-oZMYwa9IJJ for <devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 15:09:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3CA0E85886
 for <devel@driverdev.osuosl.org>; Wed, 18 Dec 2019 15:09:32 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id bx28so1905993edb.11
 for <devel@driverdev.osuosl.org>; Wed, 18 Dec 2019 07:09:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=BUyAQDh7exKhn9qjYkbpJcbPzvWcZEbGfZUTtw695Mk=;
 b=Uias5m7+XNvYSM5lRbFcoqZHlxjdHOzNYuxLo8ASBk1pHnn0ufK4BHkAneJiGZJCvB
 f61Lq9As41uW0dgasOLv3lagVLkhgCNjlZ++oG2p4ixuE+26//7PsPG/6b0zSWq0/TG+
 OABEgin9+D4CntdBjjyQoKToOKz0uoDraYj+TJzltuO+qHGLheDyV6iuWVe1YN6PXzZL
 qemYGOEiWM8vAwLEYtdzwgMKpfAeifhT90cKWN7zUsraMNJlKV6EMWgbZCQ8zqUNw2TS
 JTAUn9bbla3TL9YF34Mc3bhiA2qGxCskAFzxG16H1ab9i+yY3od2b2iAXH/0dDwSpJ5u
 vijQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=BUyAQDh7exKhn9qjYkbpJcbPzvWcZEbGfZUTtw695Mk=;
 b=Pzf7UDa8S3gvEOQPsDtR5Y0/3I6rT3g/8wmsiAR8mLbrIgxFADtMd08nc2V4DObG5x
 7weLhmxQFvGiPenO/4i8PGtNTHx/dqZ3gxWAdeJs81n33c/IFokwzdOfa2/+8oavRczh
 DFnIHON/HRlbj+bufhhPc5+8oeJvoQ4u2obFdRuoGf3EfX93oP3MZGO6dhN9gyW53Uhs
 iCwBtxaIaOg61FYEVN4t3q5quZaY9/YgcfD5vAEupf+BUd/LkVBymK8aVNEHwOVsrmtN
 ThNIOTu9E+AT+e/vAwJfheEejY2svOIJ3RZY5Alv5iwKlwCTbQMG0wcVKfxVOIuKZazd
 svbg==
X-Gm-Message-State: APjAAAUC2AZKzj13tQdX55xwcq7xogmcDVAXKixI9udUSlUH9pMTPH5b
 eTfOU4Nxp/gnmrov4CQcvBWHBC5f8DQ8BHs8GpI=
X-Google-Smtp-Source: APXvYqyfyHVS9EM15Ztg6vpQGmOCEl+ckuirCaH7W0L37eMMfeaFsZh9v1A8kl7FTrJeMfex/t8glusBwN0nu2bBC9o=
X-Received: by 2002:a17:906:7286:: with SMTP id
 b6mr3322884ejl.244.1576681770369; 
 Wed, 18 Dec 2019 07:09:30 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6402:22dc:0:0:0:0 with HTTP; Wed, 18 Dec 2019 07:09:29
 -0800 (PST)
From: "MS. MARYANNA B. THOMASON" <eco.bank1204@gmail.com>
Date: Wed, 18 Dec 2019 16:09:29 +0100
Message-ID: <CAOE+jAA917bKLQ_srpCaDT7srZ52L+QFP4fREP5rPZ4XCHSeLg@mail.gmail.com>
Subject: =?UTF-8?Q?Urgent_delivery_Notification_of_your_ATM_MASTER_CARD?=
 =?UTF-8?Q?_Amount=2C=2415=2E800=E2=80=99000=E2=80=9900=2C?=
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
Reply-To: dhl.expresscourier102156@outlook.fr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QXR0biBEZWFyLgoKVXJnZW50IGRlbGl2ZXJ5IE5vdGlmaWNhdGlvbiBvZiB5b3VyIEFUTSBNQVNU
RVIgQ0FSRCBBbW91bnQsJDE1LjgwMOKAmTAwMOKAmTAwLAosCkRobC1CZW5pbiBpcyByZWFkeSBm
b3IgZGVsaXZlcnkgb2YgeW91ciBBVE0gTWFzdGVyIGNhcmQgd29ydGggJDE1LjgwMOKAmTAwMOKA
mTAwLAphcyBhcHByb3ZlZCB0aGlzIG1vcm5pbmcsIERhdGUsIDE4LzEyLzIwMTkuIFRocm91Z2gg
dGhlIEludHJ1Y3Rpb24KZnJvbSBJTlRFUk5BVElPTkFMIE1PTkVUQVJZIEZVTkRTLCBJLk0uRiBv
ZmZpY2lhbCBEaXJlY3RvcnMuCgpSRUdJU1RSQVRJT04gTk8gOkVHNTg5NDUKUEFSQ0VMIE5VTUJF
UjogMTQwNDc5CkRlbGl2ZXJ5IFNjaHVsZWRlZCBub3csCkZpbmFsbHkgYWxsIHdlIHJlcXVpcmVk
IGZyb20geW91IGlzIHlvdXIgQVRNIENhcmQgUHJvY2Nlc3NpbmcgRGVsaXZlcnkKZmVlcyAkMTku
MDAgb25seSB3aGljaCB5b3UgbXVzdCBzZW5kIHRvIHRoaXMgREhMIHNlcnZpY2UgdG8gZW5hYmxl
IHVzCmRpc3BhdGNoIHRoZSBwYXJjZWwgdG8geW91ciBkZXN0aW5hdGlvbiB0b2RheS4KCkhlcmUg
aXMgb3VyIHJlY2VpdmluZyBwYXltZW50IGRldGFpbHMuCllvdSBhcmUgYWR2aXNlZCB0byBzZW5k
IGl0IFZpYSBNb25leSBHcmFtIFNlcnZpY2UuCgpSZWNlaXZlcidzIE5hbWUtLS0tLS0tLUFsYW4g
VWRlCkNvdW50cnktLS0tLS0tQmVuaW4gUmVwdWJsaWMuCkNpdHkvIEFkZHJlc3MtLS0tLS0tLUNv
dG9ub3UKVGVzdCBRdWVzdGlvbi0tLS0tLS0tSW4gR29kCkFuc3dlci0tLS0tLS1XZSBUcnVzdApB
bW91bnQtLS0tLS0tLS0tLS0kVVMxOS4wMCBvbmx5Ck10Y24tLS0tLS0tLS0tLS0tClNlbmRlcidz
IE5hbWUtLS0tLS0tCgpZb3VyIGRlbGl2ZXJ5ICBBVE0gY2FyZCB3b3J0aCAkMTUuODAw4oCZMDAw
4oCZMDAsCklzIER1ZSBmb3IgZGVsaXZlcnkgdG8geW91ciBhZGRyZXNzIHRvZGF5IHVwb24gY29u
ZmlybWF0aW9uIG9mCnJlcXVpcmVkIGZlZSBmcm9tIHlvdSBhc2FwLgoKQ2FsbCB1cyBvbiB0aGlz
IHBob25lIG51bWJlciBmb3IgYW55IGlucXVpcnkuICsyMjkgNjI4MTkzNzgKQXdhaXRpbmcgeW91
ciB1cmdlbnQgcmVzcG9uc2UuCgpNUy4gTUFSWUFOTkEgQi4gVEhPTUFTT04sIFNoaXBtZW50IGRp
cmVjdG9yLCBESEwgRXhwcmVzcwpDb3VyaWVyIENvbXBhbnktQmVuaW4KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
