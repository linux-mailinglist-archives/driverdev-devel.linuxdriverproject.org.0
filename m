Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1452224E55
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 02:28:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C13E688055;
	Sun, 19 Jul 2020 00:27:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rVE0X7sHzeuF; Sun, 19 Jul 2020 00:27:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4F86287E90;
	Sun, 19 Jul 2020 00:27:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C9C1F1BF30F
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 00:27:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C68BF85B73
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 00:27:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id md1ar7TUPlg2 for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 00:27:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D80E185B5B
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 00:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=Ytkx/iABdWSM1OWWt77vJCDOzuRIDi0fCU44Zd9lt/Y=; b=ypCsSJNjoGhGqYIsbAvJrsww3d
 zMcu0eGsxT63gAQNKl177O4oMjxLez0Z5zbDqWy+pV9DvMgEl+dviVOYgoTz48NnjKPH5KkF3f1Ck
 Ba4opGFois6UiRk3cGhoQ92TgcEV9P8NsRdoWLKdip3cPj3abdt/5EWHwAtu6hhI/GyAzYTKV6JS0
 oWpAfPzmDLKhfsimeZDWpcGw/s54TyfrF9m0IOVHhp6Uo1+gPZ6V5TYdhHaw8fe47AVCV5xHk2UhJ
 4J6FAv5S006YeINBpgv7NL3hYlKgTwt+RuVCxmVIVndiBN4j2YC5IOjBHKqO/85tjwsiolNVo0iwp
 nOYw/oUQ==;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jwxB9-0002Vh-Uq; Sun, 19 Jul 2020 00:27:44 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] android: binder.h: drop a duplicated word
Date: Sat, 18 Jul 2020 17:27:38 -0700
Message-Id: <20200719002738.20210-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Suren Baghdasaryan <surenb@google.com>, Hridya Valsaraju <hridya@google.com>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RHJvcCB0aGUgcmVwZWF0ZWQgd29yZCAidGhlIiBpbiBhIGNvbW1lbnQuCgpTaWduZWQtb2ZmLWJ5
OiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4KQ2M6IEdyZWcgS3JvYWgtSGFy
dG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+CkNjOiBBcnZlIEhqw7hubmV2w6VnIDxh
cnZlQGFuZHJvaWQuY29tPgpDYzogVG9kZCBLam9zIDx0a2pvc0BhbmRyb2lkLmNvbT4KQ2M6IE1h
cnRpam4gQ29lbmVuIDxtYWNvQGFuZHJvaWQuY29tPgpDYzogSm9lbCBGZXJuYW5kZXMgPGpvZWxA
am9lbGZlcm5hbmRlcy5vcmc+CkNjOiBDaHJpc3RpYW4gQnJhdW5lciA8Y2hyaXN0aWFuQGJyYXVu
ZXIuaW8+CkNjOiBIcmlkeWEgVmFsc2FyYWp1IDxocmlkeWFAZ29vZ2xlLmNvbT4KQ2M6IFN1cmVu
IEJhZ2hkYXNhcnlhbiA8c3VyZW5iQGdvb2dsZS5jb20+CkNjOiBkZXZlbEBkcml2ZXJkZXYub3N1
b3NsLm9yZwotLS0KIGluY2x1ZGUvdWFwaS9saW51eC9hbmRyb2lkL2JpbmRlci5oIHwgICAgMiAr
LQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgotLS0gbGlu
dXgtbmV4dC0yMDIwMDcxNy5vcmlnL2luY2x1ZGUvdWFwaS9saW51eC9hbmRyb2lkL2JpbmRlci5o
CisrKyBsaW51eC1uZXh0LTIwMjAwNzE3L2luY2x1ZGUvdWFwaS9saW51eC9hbmRyb2lkL2JpbmRl
ci5oCkBAIC00MDQsNyArNDA0LDcgQEAgZW51bSBiaW5kZXJfZHJpdmVyX3JldHVybl9wcm90b2Nv
bCB7CiAKIAlCUl9GQUlMRURfUkVQTFkgPSBfSU8oJ3InLCAxNyksCiAJLyoKLQkgKiBUaGUgdGhl
IGxhc3QgdHJhbnNhY3Rpb24gKGVpdGhlciBhIGJjVFJBTlNBQ1RJT04gb3IKKwkgKiBUaGUgbGFz
dCB0cmFuc2FjdGlvbiAoZWl0aGVyIGEgYmNUUkFOU0FDVElPTiBvcgogCSAqIGEgYmNBVFRFTVBU
X0FDUVVJUkUpIGZhaWxlZCAoZS5nLiBvdXQgb2YgbWVtb3J5KS4gIE5vIHBhcmFtZXRlcnMuCiAJ
ICovCiB9OwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
