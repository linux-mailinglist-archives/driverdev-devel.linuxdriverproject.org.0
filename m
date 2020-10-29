Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D6829EB40
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Oct 2020 13:07:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9399A86BA3;
	Thu, 29 Oct 2020 12:07:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eYbRsn-5321w; Thu, 29 Oct 2020 12:07:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2BACC85F7E;
	Thu, 29 Oct 2020 12:07:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 794DE1BF3E1
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 12:07:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7093D86B15
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 12:07:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H8jDmahuUFMQ for <devel@linuxdriverproject.org>;
 Thu, 29 Oct 2020 12:07:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from cpvds521.sideink.com (cpvds521.sideink.com [209.95.54.60])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C048B862F4
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 12:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=cartrackgps.net; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WLhRR6UpGJCehLfZiC6iWEepZT/z6qc1Ob8P5AhUoJg=; b=R2Ush8tyWdPRASy/PNqfT/9qJQ
 LULzcXxyo60uixud2FjvyAChhdfVa3I6NYNaTUc67NDWZDlV7l0Z6AkZHD52+zxl+8AhKympImvbK
 fxLYnzyp0mjyK9Sjom3AScmSq73or7A32wV5sglHQEJdZZiFv5oZsCSZ+5qy8DTigv5qYFNzPhP99
 Ry8Uh6zjWHaSyF1OYwk5vp3b4UKDHRMzCKofjCgoL09G/3Gu0P2rXDhYSVClOLZ5v0pN/SjUL586U
 FK0pT/8xvy/EyLQ4o35y/WVvdGtotKhFZ5Jtq6bzRjv6XfONBR2JOflHgkQonB5ZPw8D8c6kXJsjh
 9g78UsSw==;
Received: from r167-61-172-106.dialup.adsl.anteldata.net.uy
 ([167.61.172.106]:4306 helo=cartrackgps.net)
 by cpvds521.sideink.com with esmtpsa (TLS1) tls
 TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA (Exim 4.93)
 (envelope-from <infoctg@cartrackgps.net>) id 1kY6iQ-0000Vc-9i
 for devel@driverdev.osuosl.org; Thu, 29 Oct 2020 13:07:38 +0100
From: CarTrack GPS<infoctg@cartrackgps.net>
To: devel@driverdev.osuosl.org
Subject: Propuesta de GPS a Devel
Date: 29 Oct 2020 09:08:34 -0300
Message-ID: <20201029090833.EF12CEDC56A28840@cartrackgps.net>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpvds521.sideink.com
X-AntiAbuse: Original Domain - driverdev.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - cartrackgps.net
X-Get-Message-Sender-Via: cpvds521.sideink.com: authenticated_id:
 infoctg@cartrackgps.net
X-Authenticated-Sender: cpvds521.sideink.com: infoctg@cartrackgps.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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
Reply-To: CarTrack GPS <infoctg@cartrackgps.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Estimado Devel,

Le saluda Mario de la empresa Car Track GPS y estamos buscando =

distribuidores.
Somos desarrolladores de software GPS para localizaci=F3n de =

veh=EDculos.

Este mes ofrecemos equipos Hunter 3G y 4G, tambi=E9n el KIT =

completo en 2 pagos.
Tambi=E9n puede ofrecer el Software a empresas que quieran tener su =

propio Sistema y as=ED obtener una ganancia sin tener que realizar =

una inversi=F3n.

Desarrollamos 2 nuevos equipos port=E1tiles de alta duraci=F3n de =

bater=EDa. Sirven para rastreo de trailers, contenedores, =

embarcaciones y tambi=E9n bienes. Prevenga el robo y recupere los =

bienes colocando un equipo discreto dentro de una de las cajas de =

mercader=EDa, o escondido dentro de un trailer. Los ladrones hoy no =

escatiman esfuerzos y roban el trailer completo con toda la =

carga.

Con nuestra App en su tel=E9fono puede detener el veh=EDculo en caso =

de robo, localizar en tiempo real, estimar distancia recorrida, =

controlar combustible y saber qu=E9 hacen los choferes.

La promoci=F3n le permitir=E1 tener su propia Plataforma Web a un =

bajo costo. M=E1s de 200 empresas est=E1n ofreciendo servicios de =

localizaci=F3n de veh=EDculos.
Todos ellos comenzaron a trav=E9s nuestro KIT PROFESIONAL de GPS.
Si le interesa comenzar un nuevo negocio y ofrecer localizaci=F3n =

v=EDa web tome nota: no cobramos por veh=EDculo, el software es =

ilimitado.

Durante 30 d=EDas (hasta el 11/28/2020) ofrecemos un 10% de =

descuento en la compra de nuestras soluciones de GPS.
Este descuento le permitir=E1 adquirir nuestra soluci=F3n completa a =

trav=E9s de una inversi=F3n m=E1s baja de lo que normalmente ofrecemos. =


Nuestras soluciones permiten rastrear veh=EDculos o personas, con =

bater=EDa interna, resistente al agua y a los golpes, alta =

sensibilidad que permite rastrear en el interior de casas u =

oficinas, muy bajo consumo y peque=F1o tama=F1o, bot=F3n de p=E1nico y =

relay incluido sin costo.

Solicite el nuevo cat=E1logo y propuesta comercial en espa=F1ol.
Si gustan podemos programar una conferencia y hacer una video =

llamada.

Saludos cordiales,
Lic. Mario de la Cruz
Gerente Regional
Whatsapp: +505 8641 5459
www.cartrackgps.com

Tenemos clientes en m=E1s de 100 pa=EDses y 20 a=F1os de experiencia =

nos avalan.

ID: 71383

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
